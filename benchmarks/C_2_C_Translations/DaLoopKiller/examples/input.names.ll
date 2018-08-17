; ModuleID = './examples/input.names.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %s = alloca i8*, align 8
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %call = call noalias i8* @malloc(i64 10) #3
  store i8* %call, i8** %s, align 8
  %tmp = load i8*, i8** %s, align 8
  call void @trim(i8* %tmp)
  %tmp1 = load i8*, i8** %s, align 8
  %call1 = call i8* @parseString(i8* %tmp1, i8** %s)
  ret i32 0
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

; Function Attrs: nounwind uwtable
define internal void @trim(i8* %buf) #0 {
entry:
  %buf.addr = alloca i8*, align 8
  %dotp = alloca i8*, align 8
  %p = alloca i8*, align 8
  store i8* %buf, i8** %buf.addr, align 8
  %tmp = load i8*, i8** %buf.addr, align 8
  %call = call i8* @strchr(i8* %tmp, i32 46) #4
  store i8* %call, i8** %dotp, align 8
  %tobool = icmp ne i8* %call, null
  br i1 %tobool, label %if.then, label %if.end13

if.then:                                          ; preds = %entry
  %tmp1 = load i8*, i8** %dotp, align 8
  %add.ptr = getelementptr inbounds i8, i8* %tmp1, i64 1
  store i8* %add.ptr, i8** %p, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then
  %tmp2 = load i8*, i8** %p, align 8
  %tmp3 = load i8, i8* %tmp2, align 1
  %tobool1 = icmp ne i8 %tmp3, 0
  br i1 %tobool1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %tmp4 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %tmp4, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %tmp5 = load i8*, i8** %p, align 8
  %incdec.ptr2 = getelementptr inbounds i8, i8* %tmp5, i32 -1
  store i8* %incdec.ptr2, i8** %p, align 8
  br label %while.cond3

while.cond3:                                      ; preds = %while.body5, %while.end
  %tmp6 = load i8*, i8** %p, align 8
  %tmp7 = load i8, i8* %tmp6, align 1
  %conv = sext i8 %tmp7 to i32
  %cmp = icmp eq i32 %conv, 48
  br i1 %cmp, label %while.body5, label %while.end7

while.body5:                                      ; preds = %while.cond3
  %tmp8 = load i8*, i8** %p, align 8
  %incdec.ptr6 = getelementptr inbounds i8, i8* %tmp8, i32 -1
  store i8* %incdec.ptr6, i8** %p, align 8
  store i8 0, i8* %tmp8, align 1
  br label %while.cond3

while.end7:                                       ; preds = %while.cond3
  %tmp9 = load i8*, i8** %p, align 8
  %tmp10 = load i8, i8* %tmp9, align 1
  %conv8 = sext i8 %tmp10 to i32
  %cmp9 = icmp eq i32 %conv8, 46
  br i1 %cmp9, label %if.then11, label %if.else

if.then11:                                        ; preds = %while.end7
  %tmp11 = load i8*, i8** %p, align 8
  store i8 0, i8* %tmp11, align 1
  br label %if.end

if.else:                                          ; preds = %while.end7
  %tmp12 = load i8*, i8** %p, align 8
  %incdec.ptr12 = getelementptr inbounds i8, i8* %tmp12, i32 1
  store i8* %incdec.ptr12, i8** %p, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then11
  br label %if.end13

if.end13:                                         ; preds = %if.end, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal i8* @parseString(i8* %s, i8** %sp) #0 {
entry:
  %retval = alloca i8*, align 8
  %s.addr = alloca i8*, align 8
  %sp.addr = alloca i8**, align 8
  %i = alloca i32, align 4
  %c = alloca i8*, align 8
  %p = alloca i8*, align 8
  store i8* %s, i8** %s.addr, align 8
  store i8** %sp, i8*** %sp.addr, align 8
  %tmp = load i8*, i8** %s.addr, align 8
  %call = call i8* @parseInt(i8* %tmp, i32* %i)
  store i8* %call, i8** %s.addr, align 8
  %tmp1 = load i8*, i8** %s.addr, align 8
  %tobool = icmp ne i8* %tmp1, null
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %tmp2 = load i32, i32* %i, align 4
  %cmp = icmp sle i32 %tmp2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i8* null, i8** %retval, align 8
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %tmp3 = load i8*, i8** %s.addr, align 8
  %tmp4 = load i8, i8* %tmp3, align 1
  %conv = sext i8 %tmp4 to i32
  %tobool1 = icmp ne i32 %conv, 0
  br i1 %tobool1, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %tmp5 = load i8*, i8** %s.addr, align 8
  %tmp6 = load i8, i8* %tmp5, align 1
  %conv2 = sext i8 %tmp6 to i32
  %cmp3 = icmp ne i32 %conv2, 45
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %tmp7 = phi i1 [ false, %while.cond ], [ %cmp3, %land.rhs ]
  br i1 %tmp7, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %tmp8 = load i8*, i8** %s.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %tmp8, i32 1
  store i8* %incdec.ptr, i8** %s.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %tmp9 = load i8*, i8** %s.addr, align 8
  %tmp10 = load i8, i8* %tmp9, align 1
  %tobool5 = icmp ne i8 %tmp10, 0
  br i1 %tobool5, label %if.then6, label %if.else

if.then6:                                         ; preds = %while.end
  %tmp11 = load i8*, i8** %s.addr, align 8
  %incdec.ptr7 = getelementptr inbounds i8, i8* %tmp11, i32 1
  store i8* %incdec.ptr7, i8** %s.addr, align 8
  br label %if.end8

if.else:                                          ; preds = %while.end
  store i8* null, i8** %retval, align 8
  br label %return

if.end8:                                          ; preds = %if.then6
  %tmp12 = load i32, i32* %i, align 4
  %add = add nsw i32 %tmp12, 1
  %conv9 = sext i32 %add to i64
  %call10 = call noalias i8* @malloc(i64 %conv9) #3
  store i8* %call10, i8** %c, align 8
  %tmp13 = load i8*, i8** %c, align 8
  store i8* %tmp13, i8** %p, align 8
  br label %while.cond11

while.cond11:                                     ; preds = %while.body18, %if.end8
  %tmp14 = load i32, i32* %i, align 4
  %cmp12 = icmp sgt i32 %tmp14, 0
  br i1 %cmp12, label %land.rhs14, label %land.end17

land.rhs14:                                       ; preds = %while.cond11
  %tmp15 = load i8*, i8** %s.addr, align 8
  %tmp16 = load i8, i8* %tmp15, align 1
  %conv15 = sext i8 %tmp16 to i32
  %tobool16 = icmp ne i32 %conv15, 0
  br label %land.end17

land.end17:                                       ; preds = %land.rhs14, %while.cond11
  %tmp17 = phi i1 [ false, %while.cond11 ], [ %tobool16, %land.rhs14 ]
  br i1 %tmp17, label %while.body18, label %while.end21

while.body18:                                     ; preds = %land.end17
  %tmp18 = load i8*, i8** %s.addr, align 8
  %incdec.ptr19 = getelementptr inbounds i8, i8* %tmp18, i32 1
  store i8* %incdec.ptr19, i8** %s.addr, align 8
  %tmp19 = load i8, i8* %tmp18, align 1
  %tmp20 = load i8*, i8** %p, align 8
  %incdec.ptr20 = getelementptr inbounds i8, i8* %tmp20, i32 1
  store i8* %incdec.ptr20, i8** %p, align 8
  store i8 %tmp19, i8* %tmp20, align 1
  %tmp21 = load i32, i32* %i, align 4
  %dec = add nsw i32 %tmp21, -1
  store i32 %dec, i32* %i, align 4
  br label %while.cond11

while.end21:                                      ; preds = %land.end17
  %tmp22 = load i32, i32* %i, align 4
  %cmp22 = icmp sgt i32 %tmp22, 0
  br i1 %cmp22, label %if.then24, label %if.end25

if.then24:                                        ; preds = %while.end21
  %tmp23 = load i8*, i8** %c, align 8
  call void @free(i8* %tmp23) #3
  store i8* null, i8** %retval, align 8
  br label %return

if.end25:                                         ; preds = %while.end21
  %tmp24 = load i8*, i8** %p, align 8
  store i8 0, i8* %tmp24, align 1
  %tmp25 = load i8*, i8** %c, align 8
  %tmp26 = load i8**, i8*** %sp.addr, align 8
  store i8* %tmp25, i8** %tmp26, align 8
  %tmp27 = load i8*, i8** %s.addr, align 8
  store i8* %tmp27, i8** %retval, align 8
  br label %return

return:                                           ; preds = %if.end25, %if.then24, %if.else, %if.then
  %tmp28 = load i8*, i8** %retval, align 8
  ret i8* %tmp28
}

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #2

; Function Attrs: nounwind uwtable
define internal i8* @parseInt(i8* %s, i32* %i) #0 {
entry:
  %s.addr = alloca i8*, align 8
  %i.addr = alloca i32*, align 8
  store i8* %s, i8** %s.addr, align 8
  store i32* %i, i32** %i.addr, align 8
  %tmp = load i32*, i32** %i.addr, align 8
  store i32 80, i32* %tmp, align 4
  %tmp1 = load i8*, i8** %s.addr, align 8
  ret i8* %tmp1
}

; Function Attrs: nounwind
declare void @free(i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.8.0 (tags/RELEASE_380/final)"}

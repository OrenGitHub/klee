; ModuleID = './examples/input.ready.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %i1 = alloca i32, align 4
  %i2 = alloca i32, align 4
  %s1 = alloca [8 x i8], align 1
  %s2 = alloca [5 x i8], align 1
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 19, i32* %i1, align 4
  store i32 13, i32* %i2, align 4
  %arrayidx = getelementptr inbounds [8 x i8], [8 x i8]* %s1, i64 0, i64 3
  store i8 99, i8* %arrayidx, align 1
  %arraydecay = getelementptr inbounds [8 x i8], [8 x i8]* %s1, i32 0, i32 0
  %arraydecay1 = getelementptr inbounds [5 x i8], [5 x i8]* %s2, i32 0, i32 0
  %call = call i8* @foo(i8* %arraydecay, i8* %arraydecay1)
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* %call)
  ret i32 0
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal i8* @foo(i8* %s1, i8* %s2) #0 {
entry:
  %retval = alloca i8*, align 8
  %s1.addr = alloca i8*, align 8
  %s2.addr = alloca i8*, align 8
  %s = alloca i8*, align 8
  %path = alloca i8*, align 8
  store i8* %s1, i8** %s1.addr, align 8
  store i8* %s2, i8** %s2.addr, align 8
  %tmp = load i8*, i8** %s1.addr, align 8
  store i8* %tmp, i8** %s, align 8
  %tmp1 = load i8*, i8** %s2.addr, align 8
  store i8* %tmp1, i8** %path, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %tmp2 = load i8*, i8** %s, align 8
  %tmp3 = load i8*, i8** %path, align 8
  %cmp = icmp ugt i8* %tmp2, %tmp3
  br i1 %cmp, label %land.rhs, label %while.end

land.rhs:                                         ; preds = %while.cond
  %tmp4 = load i8*, i8** %s, align 8
  %tmp5 = load i8, i8* %tmp4, align 1
  %conv = sext i8 %tmp5 to i32
  %cmp1 = icmp eq i32 %conv, 47
  br i1 %cmp1, label %while.body, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs
  %tmp6 = load i8*, i8** %s, align 8
  %tmp7 = load i8, i8* %tmp6, align 1
  %conv3 = sext i8 %tmp7 to i32
  %cmp4 = icmp eq i32 %conv3, 92
  br i1 %cmp4, label %while.body, label %while.end

while.body:                                       ; preds = %land.rhs, %lor.rhs
  %tmp10 = load i8*, i8** %s, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %tmp10, i32 -1
  store i8* %incdec.ptr, i8** %s, align 8
  store i8 0, i8* %tmp10, align 1
  br label %while.cond

while.end:                                        ; preds = %while.cond, %lor.rhs
  %tmp11 = load i8*, i8** %retval, align 8
  ret i8* %tmp11
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.8.0 (tags/RELEASE_380/final)"}

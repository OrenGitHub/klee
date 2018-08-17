; ModuleID = './examples/input.ready.bc'
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
  %call = call noalias i8* @malloc(i64 10) #2
  store i8* %call, i8** %s, align 8
  %tmp = load i8*, i8** %s, align 8
  %call1 = call i8* @foo(i8* %tmp)
  ret i32 0
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

; Function Attrs: nounwind uwtable
define internal i8* @foo(i8* %s) #0 {
entry:
  %retval = alloca i8*, align 8
  %s.addr = alloca i8*, align 8
  %res = alloca i32, align 4
  %c = alloca i8, align 1
  %path = alloca i8*, align 8
  store i8* %s, i8** %s.addr, align 8
  store i8 0, i8* %c, align 1
  %tmp = load i8*, i8** %s.addr, align 8
  store i8* %tmp, i8** %path, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %tmp1 = load i8*, i8** %s.addr, align 8
  %tmp2 = load i8, i8* %tmp1, align 1
  %conv = sext i8 %tmp2 to i32
  %cmp = icmp eq i32 %conv, 97
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %tmp3 = load i8*, i8** %s.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %tmp3, i32 1
  store i8* %incdec.ptr, i8** %s.addr, align 8
  %tmp4 = load i8, i8* %tmp3, align 1
  store i8 %tmp4, i8* %c, align 1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %tmp5 = load i8, i8* %c, align 1
  %tmp6 = load i8*, i8** %s.addr, align 8
  store i8 %tmp4, i8* %tmp6, align 1
  %tmp7 = load i8*, i8** %retval, align 8
  ret i8* %tmp7
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.8.0 (tags/RELEASE_380/final)"}

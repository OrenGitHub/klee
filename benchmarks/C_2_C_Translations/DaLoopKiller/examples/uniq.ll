; ModuleID = './examples/uniq.ready.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.quoting_options = type { i32, i32, [8 x i32] }
%struct.slotvec = type { i64, i8* }
%struct.option = type { i8*, i32, i32*, i32 }
%struct.linebuffer = type { i64, i64, i8* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.char_directives = type { i64, %struct.char_directive*, i64, i64 }
%struct.char_directive = type { i8*, i8*, i32, i8*, i8*, i64, i8*, i8*, i64, i8, i64 }
%struct.arguments = type { i64, %struct.argument* }
%struct.argument = type { i32, %union.anon.17 }
%union.anon.17 = type { x86_fp80 }
%union.memory_double = type { x86_fp80 }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [39 x i8] c"Try `%s --help' for more information.\0A\00", align 1
@program_name = common global i8* null, align 8
@.str1 = private unnamed_addr constant [40 x i8] c"Usage: %s [OPTION]... [INPUT [OUTPUT]]\0A\00", align 1
@.str2 = private unnamed_addr constant [124 x i8] c"Discard all but one of successive identical lines from INPUT (or\0Astandard input), writing to OUTPUT (or standard output).\0A\0A\00", align 1
@stdout = external global %struct._IO_FILE*
@.str3 = private unnamed_addr constant [74 x i8] c"Mandatory arguments to long options are mandatory for short options too.\0A\00", align 1
@.str4 = private unnamed_addr constant [118 x i8] c"  -c, --count           prefix lines by the number of occurrences\0A  -d, --repeated        only print duplicate lines\0A\00", align 1
@.str5 = private unnamed_addr constant [495 x i8] c"  -D, --all-repeated[=delimit-method]  print all duplicate lines\0A                        delimit-method={none(default),prepend,separate}\0A                        Delimiting is done with blank lines.\0A  -f, --skip-fields=N   avoid comparing the first N fields\0A  -i, --ignore-case     ignore differences in case when comparing\0A  -s, --skip-chars=N    avoid comparing the first N characters\0A  -u, --unique          only print unique lines\0A  -z, --zero-terminated  end lines with 0 byte, not newline\0A\00", align 1
@.str6 = private unnamed_addr constant [68 x i8] c"  -w, --check-chars=N   compare no more than N characters in lines\0A\00", align 1
@.str7 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str8 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str9 = private unnamed_addr constant [99 x i8] c"\0AA field is a run of whitespace, then non-whitespace characters.\0AFields are skipped before chars.\0A\00", align 1
@.str10 = private unnamed_addr constant [143 x i8] c"\0ANote: 'uniq' does not detect repeated lines unless they are adjacent.\0AYou may want to sort the input first, or use `sort -u' without `uniq'.\0A\00", align 1
@.str11 = private unnamed_addr constant [16 x i8] c"POSIXLY_CORRECT\00", align 1
@.str12 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str13 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str14 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str15 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@hard_LC_COLLATE = internal global i8 0, align 1
@skip_chars = internal global i64 0, align 8
@skip_fields = internal global i64 0, align 8
@check_chars = internal global i64 0, align 8
@output_first_repeated = internal global i8 0, align 1
@output_unique = internal global i8 0, align 1
@output_later_repeated = internal global i8 0, align 1
@countmode = internal global i32 0, align 4
@delimit_groups = internal global i32 0, align 4
@.str16 = private unnamed_addr constant [24 x i8] c"-0123456789Dcdf:is:uw:z\00", align 1
@optind = external global i32
@.str17 = private unnamed_addr constant [17 x i8] c"extra operand %s\00", align 1
@optarg = external global i8*
@.str18 = private unnamed_addr constant [15 x i8] c"--all-repeated\00", align 1
@delimit_method_string = internal constant [4 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str34, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str35, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str36, i32 0, i32 0), i8* null], align 16
@delimit_method_map = internal constant [3 x i32] [i32 0, i32 1, i32 2], align 4
@.str19 = private unnamed_addr constant [33 x i8] c"invalid number of fields to skip\00", align 1
@ignore_case = internal global i8 0, align 1
@.str20 = private unnamed_addr constant [32 x i8] c"invalid number of bytes to skip\00", align 1
@.str21 = private unnamed_addr constant [35 x i8] c"invalid number of bytes to compare\00", align 1
@.str22 = private unnamed_addr constant [5 x i8] c"uniq\00", align 1
@.str23 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str24 = private unnamed_addr constant [5 x i8] c"6.11\00", align 1
@.str25 = private unnamed_addr constant [17 x i8] c"Richard Stallman\00", align 1
@.str26 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@.str27 = private unnamed_addr constant [63 x i8] c"printing all duplicated lines and repeat counts is meaningless\00", align 1
@.str28 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@stdin = external global %struct._IO_FILE*
@.str29 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str30 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str31 = private unnamed_addr constant [17 x i8] c"error reading %s\00", align 1
@.str32 = private unnamed_addr constant [6 x i8] c"%7lu \00", align 1
@.str33 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str34 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str35 = private unnamed_addr constant [8 x i8] c"prepend\00", align 1
@.str36 = private unnamed_addr constant [9 x i8] c"separate\00", align 1
@.str37 = private unnamed_addr constant [6 x i8] c"count\00", align 1
@.str38 = private unnamed_addr constant [9 x i8] c"repeated\00", align 1
@.str39 = private unnamed_addr constant [13 x i8] c"all-repeated\00", align 1
@.str40 = private unnamed_addr constant [12 x i8] c"ignore-case\00", align 1
@.str41 = private unnamed_addr constant [7 x i8] c"unique\00", align 1
@.str42 = private unnamed_addr constant [12 x i8] c"skip-fields\00", align 1
@.str43 = private unnamed_addr constant [11 x i8] c"skip-chars\00", align 1
@.str44 = private unnamed_addr constant [12 x i8] c"check-chars\00", align 1
@.str45 = private unnamed_addr constant [16 x i8] c"zero-terminated\00", align 1
@.str46 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str47 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@longopts = internal constant <{ { i8*, i32, i32*, i32, [4 x i8] }, { i8*, i32, i32*, i32, [4 x i8] }, { i8*, i32, i32*, i32, [4 x i8] }, { i8*, i32, i32*, i32, [4 x i8] }, { i8*, i32, i32*, i32, [4 x i8] }, { i8*, i32, i32*, i32, [4 x i8] }, { i8*, i32, i32*, i32, [4 x i8] }, { i8*, i32, i32*, i32, [4 x i8] }, { i8*, i32, i32*, i32, [4 x i8] }, { i8*, i32, i32*, i32, [4 x i8] }, { i8*, i32, i32*, i32, [4 x i8] }, { i8*, i32, i32*, i32, [4 x i8] } }> <{ { i8*, i32, i32*, i32, [4 x i8] } { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str37, i32 0, i32 0), i32 0, i32* null, i32 99, [4 x i8] undef }, { i8*, i32, i32*, i32, [4 x i8] } { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str38, i32 0, i32 0), i32 0, i32* null, i32 100, [4 x i8] undef }, { i8*, i32, i32*, i32, [4 x i8] } { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str39, i32 0, i32 0), i32 2, i32* null, i32 68, [4 x i8] undef }, { i8*, i32, i32*, i32, [4 x i8] } { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str40, i32 0, i32 0), i32 0, i32* null, i32 105, [4 x i8] undef }, { i8*, i32, i32*, i32, [4 x i8] } { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str41, i32 0, i32 0), i32 0, i32* null, i32 117, [4 x i8] undef }, { i8*, i32, i32*, i32, [4 x i8] } { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str42, i32 0, i32 0), i32 1, i32* null, i32 102, [4 x i8] undef }, { i8*, i32, i32*, i32, [4 x i8] } { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str43, i32 0, i32 0), i32 1, i32* null, i32 115, [4 x i8] undef }, { i8*, i32, i32*, i32, [4 x i8] } { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str44, i32 0, i32 0), i32 1, i32* null, i32 119, [4 x i8] undef }, { i8*, i32, i32*, i32, [4 x i8] } { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str45, i32 0, i32 0), i32 0, i32* null, i32 122, [4 x i8] undef }, { i8*, i32, i32*, i32, [4 x i8] } { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str46, i32 0, i32 0), i32 0, i32* null, i32 -130, [4 x i8] undef }, { i8*, i32, i32*, i32, [4 x i8] } { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str47, i32 0, i32 0), i32 0, i32* null, i32 -131, [4 x i8] undef }, { i8*, i32, i32*, i32, [4 x i8] } { i8* null, i32 0, i32* null, i32 0, [4 x i8] undef } }>, align 16
@.str48 = private unnamed_addr constant [23 x i8] c"\0AReport bugs to <%s>.\0A\00", align 1
@.str49 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str50 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str151 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str252 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str353 = private unnamed_addr constant [202 x i8] c"\0ALicense GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\0A\00", align 1
@.str454 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str555 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str656 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str757 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str858 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str959 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str1060 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str1161 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str1262 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str1363 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@version_etc_copyright = constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16
@.str68 = private unnamed_addr constant [25 x i8] c"string comparison failed\00", align 1
@.str169 = private unnamed_addr constant [43 x i8] c"Set LC_ALL='C' to work around the problem.\00", align 1
@.str270 = private unnamed_addr constant [37 x i8] c"The strings compared were %s and %s.\00", align 1
@argmatch_die = global void ()* @__argmatch_die, align 8
@.str75 = private unnamed_addr constant [27 x i8] c"invalid argument %s for %s\00", align 1
@.str176 = private unnamed_addr constant [29 x i8] c"ambiguous argument %s for %s\00", align 1
@.str277 = private unnamed_addr constant [21 x i8] c"Valid arguments are:\00", align 1
@.str378 = private unnamed_addr constant [10 x i8] c"\0A  - `%s'\00", align 1
@.str479 = private unnamed_addr constant [7 x i8] c", `%s'\00", align 1
@file_name = internal global i8* null, align 8
@.str82 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str183 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str284 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = global i32 1, align 4
@.str89 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str190 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str97 = private unnamed_addr constant [16 x i8] c"_POSIX2_VERSION\00", align 1
@.str104 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str1105 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str2106 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str3107 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str4108 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str5109 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str6110 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str7111 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_args = constant [9 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str104, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str1105, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str2106, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str3107, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str4108, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str5109, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str6110, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str7111, i32 0, i32 0), i8* null], align 16
@quoting_style_vals = constant [8 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7], align 16
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 4
@slotvec = internal global %struct.slotvec* @slotvec0, align 8
@nslots = internal global i32 1, align 4
@slot0 = internal global [256 x i8] zeroinitializer, align 16
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8
@.str8112 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str9113 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str10114 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str131 = private unnamed_addr constant [38 x i8] c"0 <= strtol_base && strtol_base <= 36\00", align 1
@.str1132 = private unnamed_addr constant [35 x i8] c"../../coreutils-6.11/lib/xstrtol.c\00", align 1
@__PRETTY_FUNCTION__.xstrtoul = private unnamed_addr constant [81 x i8] c"strtol_error xstrtoul(const char *, char **, int, unsigned long *, const char *)\00", align 1
@.str137 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str1138 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str147 = private unnamed_addr constant [7 x i8] c"(NULL)\00", align 1
@printf_fetchargs.wide_null_string = internal constant [7 x i32] [i32 40, i32 78, i32 85, i32 76, i32 76, i32 41, i32 0], align 16

; Function Attrs: nounwind uwtable
define void @usage(i32 %status) #0 {
entry:
  %status.addr = alloca i32, align 4
  %"reg2mem alloca point" = bitcast i32 0 to i32
  store i32 %status, i32* %status.addr, align 4
  %tmp = load i32, i32* %status.addr, align 4
  %cmp = icmp ne i32 %tmp, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %tmp1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call = call i8* @gettext(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i32 0, i32 0)) #8
  %tmp2 = load i8*, i8** @program_name, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %tmp1, i8* %call, i8* %tmp2)
  br label %if.end

if.else:                                          ; preds = %entry
  %call2 = call i8* @gettext(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str1, i32 0, i32 0)) #8
  %tmp3 = load i8*, i8** @program_name, align 8
  %call3 = call i32 (i8*, ...) @printf(i8* %call2, i8* %tmp3)
  %call4 = call i8* @gettext(i8* getelementptr inbounds ([124 x i8], [124 x i8]* @.str2, i32 0, i32 0)) #8
  %tmp4 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call5 = call i32 @fputs_unlocked(i8* %call4, %struct._IO_FILE* %tmp4)
  %call6 = call i8* @gettext(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str3, i32 0, i32 0)) #8
  %tmp5 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call7 = call i32 @fputs_unlocked(i8* %call6, %struct._IO_FILE* %tmp5)
  %call8 = call i8* @gettext(i8* getelementptr inbounds ([118 x i8], [118 x i8]* @.str4, i32 0, i32 0)) #8
  %tmp6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call9 = call i32 @fputs_unlocked(i8* %call8, %struct._IO_FILE* %tmp6)
  %call10 = call i8* @gettext(i8* getelementptr inbounds ([495 x i8], [495 x i8]* @.str5, i32 0, i32 0)) #8
  %tmp7 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call11 = call i32 @fputs_unlocked(i8* %call10, %struct._IO_FILE* %tmp7)
  %call12 = call i8* @gettext(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str6, i32 0, i32 0)) #8
  %tmp8 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call13 = call i32 @fputs_unlocked(i8* %call12, %struct._IO_FILE* %tmp8)
  %call14 = call i8* @gettext(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str7, i32 0, i32 0)) #8
  %tmp9 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call15 = call i32 @fputs_unlocked(i8* %call14, %struct._IO_FILE* %tmp9)
  %call16 = call i8* @gettext(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str8, i32 0, i32 0)) #8
  %tmp10 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call17 = call i32 @fputs_unlocked(i8* %call16, %struct._IO_FILE* %tmp10)
  %call18 = call i8* @gettext(i8* getelementptr inbounds ([99 x i8], [99 x i8]* @.str9, i32 0, i32 0)) #8
  %tmp11 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call19 = call i32 @fputs_unlocked(i8* %call18, %struct._IO_FILE* %tmp11)
  %call20 = call i8* @gettext(i8* getelementptr inbounds ([143 x i8], [143 x i8]* @.str10, i32 0, i32 0)) #8
  %tmp12 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call21 = call i32 @fputs_unlocked(i8* %call20, %struct._IO_FILE* %tmp12)
  call void @emit_bug_reporting_address()
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %tmp13 = load i32, i32* %status.addr, align 4
  call void @exit(i32 %tmp13) #12
  unreachable

return:                                           ; No predecessors!
  ret void
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #2

declare i32 @printf(i8*, ...) #1

declare i32 @fputs_unlocked(i8*, %struct._IO_FILE*) #1

; Function Attrs: inlinehint nounwind uwtable
define internal void @emit_bug_reporting_address() #3 {
entry:
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %call = call i8* @gettext(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str48, i32 0, i32 0)) #8
  %call1 = call i32 (i8*, ...) @printf(i8* %call, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str49, i32 0, i32 0))
  ret void
}

; Function Attrs: noreturn nounwind
declare void @exit(i32) #4

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %optc = alloca i32, align 4
  %posixly_correct = alloca i8, align 1
  %skip_field_option_type = alloca i32, align 4
  %nfiles = alloca i32, align 4
  %file = alloca [2 x i8*], align 16
  %delimiter = alloca i8, align 1
  %size = alloca i64, align 8
  %cond.reg2mem = alloca i32
  %"reg2mem alloca point" = bitcast i32 0 to i32
  store i32 0, i32* %retval
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 0, i32* %optc, align 4
  %call = call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str11, i32 0, i32 0)) #8
  %cmp = icmp ne i8* %call, null
  %frombool = zext i1 %cmp to i8
  store i8 %frombool, i8* %posixly_correct, align 1
  store i32 0, i32* %skip_field_option_type, align 4
  store i32 0, i32* %nfiles, align 4
  store i8 10, i8* %delimiter, align 1
  %arrayidx = getelementptr inbounds [2 x i8*], [2 x i8*]* %file, i32 0, i64 1
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str12, i32 0, i32 0), i8** %arrayidx, align 8
  %arrayidx1 = getelementptr inbounds [2 x i8*], [2 x i8*]* %file, i32 0, i64 0
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str12, i32 0, i32 0), i8** %arrayidx1, align 8
  %tmp = load i8**, i8*** %argv.addr, align 8
  %arrayidx2 = getelementptr inbounds i8*, i8** %tmp, i64 0
  %tmp1 = load i8*, i8** %arrayidx2, align 8
  store i8* %tmp1, i8** @program_name, align 8
  %call3 = call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str13, i32 0, i32 0)) #8
  %call4 = call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str14, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str15, i32 0, i32 0)) #8
  %call5 = call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str14, i32 0, i32 0)) #8
  %call6 = call zeroext i1 @hard_locale(i32 3)
  %frombool7 = zext i1 %call6 to i8
  store i8 %frombool7, i8* @hard_LC_COLLATE, align 1
  %call8 = call i32 @atexit(void ()* @close_stdout) #8
  store i64 0, i64* @skip_chars, align 8
  store i64 0, i64* @skip_fields, align 8
  store i64 -1, i64* @check_chars, align 8
  store i8 1, i8* @output_first_repeated, align 1
  store i8 1, i8* @output_unique, align 1
  store i8 0, i8* @output_later_repeated, align 1
  store i32 1, i32* @countmode, align 4
  store i32 0, i32* @delimit_groups, align 4
  br label %for.cond

for.cond:                                         ; preds = %if.end93, %entry
  %tmp2 = load i32, i32* %optc, align 4
  %cmp9 = icmp eq i32 %tmp2, -1
  br i1 %cmp9, label %for.cond.if.then_crit_edge, label %lor.lhs.false

for.cond.if.then_crit_edge:                       ; preds = %for.cond
  br label %if.then

lor.lhs.false:                                    ; preds = %for.cond
  %tmp3 = load i8, i8* %posixly_correct, align 1
  %tobool = trunc i8 %tmp3 to i1
  br i1 %tobool, label %land.lhs.true, label %lor.lhs.false.lor.lhs.false11_crit_edge

lor.lhs.false.lor.lhs.false11_crit_edge:          ; preds = %lor.lhs.false
  br label %lor.lhs.false11

land.lhs.true:                                    ; preds = %lor.lhs.false
  %tmp4 = load i32, i32* %nfiles, align 4
  %cmp10 = icmp ne i32 %tmp4, 0
  br i1 %cmp10, label %land.lhs.true.if.then_crit_edge, label %land.lhs.true.lor.lhs.false11_crit_edge

land.lhs.true.lor.lhs.false11_crit_edge:          ; preds = %land.lhs.true
  br label %lor.lhs.false11

land.lhs.true.if.then_crit_edge:                  ; preds = %land.lhs.true
  br label %if.then

lor.lhs.false11:                                  ; preds = %land.lhs.true.lor.lhs.false11_crit_edge, %lor.lhs.false.lor.lhs.false11_crit_edge
  %tmp5 = load i32, i32* %argc.addr, align 4
  %tmp6 = load i8**, i8*** %argv.addr, align 8
  %call12 = call i32 @getopt_long(i32 %tmp5, i8** %tmp6, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str16, i32 0, i32 0), %struct.option* getelementptr inbounds ([12 x %struct.option], [12 x %struct.option]* bitcast (<{ { i8*, i32, i32*, i32, [4 x i8] }, { i8*, i32, i32*, i32, [4 x i8] }, { i8*, i32, i32*, i32, [4 x i8] }, { i8*, i32, i32*, i32, [4 x i8] }, { i8*, i32, i32*, i32, [4 x i8] }, { i8*, i32, i32*, i32, [4 x i8] }, { i8*, i32, i32*, i32, [4 x i8] }, { i8*, i32, i32*, i32, [4 x i8] }, { i8*, i32, i32*, i32, [4 x i8] }, { i8*, i32, i32*, i32, [4 x i8] }, { i8*, i32, i32*, i32, [4 x i8] }, { i8*, i32, i32*, i32, [4 x i8] } }>* @longopts to [12 x %struct.option]*), i32 0, i32 0), i32* null) #8
  store i32 %call12, i32* %optc, align 4
  %cmp13 = icmp eq i32 %call12, -1
  br i1 %cmp13, label %lor.lhs.false11.if.then_crit_edge, label %if.else

lor.lhs.false11.if.then_crit_edge:                ; preds = %lor.lhs.false11
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false11.if.then_crit_edge, %land.lhs.true.if.then_crit_edge, %for.cond.if.then_crit_edge
  %tmp7 = load i32, i32* %argc.addr, align 4
  %tmp8 = load i32, i32* @optind, align 4
  %cmp14 = icmp sle i32 %tmp7, %tmp8
  br i1 %cmp14, label %if.then15, label %if.end

if.then15:                                        ; preds = %if.then
  br label %for.end

if.end:                                           ; preds = %if.then
  %tmp9 = load i32, i32* %nfiles, align 4
  %cmp16 = icmp eq i32 %tmp9, 2
  br i1 %cmp16, label %if.then17, label %if.end.if.end21_crit_edge

if.end.if.end21_crit_edge:                        ; preds = %if.end
  br label %if.end21

if.then17:                                        ; preds = %if.end
  %call18 = call i8* @gettext(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str17, i32 0, i32 0)) #8
  %tmp10 = load i32, i32* @optind, align 4
  %idxprom = sext i32 %tmp10 to i64
  %tmp11 = load i8**, i8*** %argv.addr, align 8
  %arrayidx19 = getelementptr inbounds i8*, i8** %tmp11, i64 %idxprom
  %tmp12 = load i8*, i8** %arrayidx19, align 8
  %call20 = call i8* @quote(i8* %tmp12)
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %call18, i8* %call20)
  call void @usage(i32 1)
  br label %if.end21

if.end21:                                         ; preds = %if.end.if.end21_crit_edge, %if.then17
  %tmp13 = load i32, i32* @optind, align 4
  %inc = add nsw i32 %tmp13, 1
  store i32 %inc, i32* @optind, align 4
  %idxprom22 = sext i32 %tmp13 to i64
  %tmp14 = load i8**, i8*** %argv.addr, align 8
  %arrayidx23 = getelementptr inbounds i8*, i8** %tmp14, i64 %idxprom22
  %tmp15 = load i8*, i8** %arrayidx23, align 8
  %tmp16 = load i32, i32* %nfiles, align 4
  %inc24 = add nsw i32 %tmp16, 1
  store i32 %inc24, i32* %nfiles, align 4
  %idxprom25 = sext i32 %tmp16 to i64
  %arrayidx26 = getelementptr inbounds [2 x i8*], [2 x i8*]* %file, i32 0, i64 %idxprom25
  store i8* %tmp15, i8** %arrayidx26, align 8
  br label %if.end93

if.else:                                          ; preds = %lor.lhs.false11
  %tmp17 = load i32, i32* %optc, align 4
  switch i32 %tmp17, label %sw.default [
    i32 1, label %sw.bb
    i32 48, label %if.else.sw.bb54_crit_edge
    i32 49, label %if.else.sw.bb54_crit_edge48
    i32 50, label %if.else.sw.bb54_crit_edge49
    i32 51, label %if.else.sw.bb54_crit_edge50
    i32 52, label %if.else.sw.bb54_crit_edge51
    i32 53, label %if.else.sw.bb54_crit_edge52
    i32 54, label %if.else.sw.bb54_crit_edge53
    i32 55, label %if.else.sw.bb54_crit_edge54
    i32 56, label %if.else.sw.bb54_crit_edge55
    i32 57, label %if.else.sw.bb54_crit_edge56
    i32 99, label %sw.bb72
    i32 100, label %sw.bb73
    i32 68, label %sw.bb74
    i32 102, label %sw.bb82
    i32 105, label %sw.bb84
    i32 115, label %sw.bb85
    i32 117, label %sw.bb87
    i32 119, label %sw.bb88
    i32 122, label %sw.bb90
    i32 -130, label %sw.bb91
    i32 -131, label %sw.bb92
  ]

if.else.sw.bb54_crit_edge56:                      ; preds = %if.else
  br label %sw.bb54

if.else.sw.bb54_crit_edge55:                      ; preds = %if.else
  br label %sw.bb54

if.else.sw.bb54_crit_edge54:                      ; preds = %if.else
  br label %sw.bb54

if.else.sw.bb54_crit_edge53:                      ; preds = %if.else
  br label %sw.bb54

if.else.sw.bb54_crit_edge52:                      ; preds = %if.else
  br label %sw.bb54

if.else.sw.bb54_crit_edge51:                      ; preds = %if.else
  br label %sw.bb54

if.else.sw.bb54_crit_edge50:                      ; preds = %if.else
  br label %sw.bb54

if.else.sw.bb54_crit_edge49:                      ; preds = %if.else
  br label %sw.bb54

if.else.sw.bb54_crit_edge48:                      ; preds = %if.else
  br label %sw.bb54

if.else.sw.bb54_crit_edge:                        ; preds = %if.else
  br label %sw.bb54

sw.bb:                                            ; preds = %if.else
  %tmp18 = load i8*, i8** @optarg, align 8
  %arrayidx27 = getelementptr inbounds i8, i8* %tmp18, i64 0
  %tmp19 = load i8, i8* %arrayidx27, align 1
  %conv = sext i8 %tmp19 to i32
  %cmp28 = icmp eq i32 %conv, 43
  br i1 %cmp28, label %land.lhs.true30, label %sw.bb.if.else42_crit_edge

sw.bb.if.else42_crit_edge:                        ; preds = %sw.bb
  br label %if.else42

land.lhs.true30:                                  ; preds = %sw.bb
  %call31 = call i32 @posix2_version()
  %cmp32 = icmp slt i32 %call31, 200112
  br i1 %cmp32, label %land.lhs.true34, label %land.lhs.true30.if.else42_crit_edge

land.lhs.true30.if.else42_crit_edge:              ; preds = %land.lhs.true30
  br label %if.else42

land.lhs.true34:                                  ; preds = %land.lhs.true30
  %tmp20 = load i8*, i8** @optarg, align 8
  %call35 = call i32 @xstrtoul(i8* %tmp20, i8** null, i32 10, i64* %size, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str13, i32 0, i32 0))
  %cmp36 = icmp eq i32 %call35, 0
  br i1 %cmp36, label %land.lhs.true38, label %land.lhs.true34.if.else42_crit_edge

land.lhs.true34.if.else42_crit_edge:              ; preds = %land.lhs.true34
  br label %if.else42

land.lhs.true38:                                  ; preds = %land.lhs.true34
  %tmp21 = load i64, i64* %size, align 8
  %cmp39 = icmp ule i64 %tmp21, -1
  br i1 %cmp39, label %if.then41, label %land.lhs.true38.if.else42_crit_edge

land.lhs.true38.if.else42_crit_edge:              ; preds = %land.lhs.true38
  br label %if.else42

if.then41:                                        ; preds = %land.lhs.true38
  %tmp22 = load i64, i64* %size, align 8
  store i64 %tmp22, i64* @skip_chars, align 8
  br label %if.end53

if.else42:                                        ; preds = %land.lhs.true38.if.else42_crit_edge, %land.lhs.true34.if.else42_crit_edge, %land.lhs.true30.if.else42_crit_edge, %sw.bb.if.else42_crit_edge
  %tmp23 = load i32, i32* %nfiles, align 4
  %cmp43 = icmp eq i32 %tmp23, 2
  br i1 %cmp43, label %if.then45, label %if.else48

if.then45:                                        ; preds = %if.else42
  %call46 = call i8* @gettext(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str17, i32 0, i32 0)) #8
  %tmp24 = load i8*, i8** @optarg, align 8
  %call47 = call i8* @quote(i8* %tmp24)
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %call46, i8* %call47)
  call void @usage(i32 1)
  br label %if.end52

if.else48:                                        ; preds = %if.else42
  %tmp25 = load i8*, i8** @optarg, align 8
  %tmp26 = load i32, i32* %nfiles, align 4
  %inc49 = add nsw i32 %tmp26, 1
  store i32 %inc49, i32* %nfiles, align 4
  %idxprom50 = sext i32 %tmp26 to i64
  %arrayidx51 = getelementptr inbounds [2 x i8*], [2 x i8*]* %file, i32 0, i64 %idxprom50
  store i8* %tmp25, i8** %arrayidx51, align 8
  br label %if.end52

if.end52:                                         ; preds = %if.else48, %if.then45
  br label %if.end53

if.end53:                                         ; preds = %if.end52, %if.then41
  br label %sw.epilog

sw.bb54:                                          ; preds = %if.else.sw.bb54_crit_edge56, %if.else.sw.bb54_crit_edge55, %if.else.sw.bb54_crit_edge54, %if.else.sw.bb54_crit_edge53, %if.else.sw.bb54_crit_edge52, %if.else.sw.bb54_crit_edge51, %if.else.sw.bb54_crit_edge50, %if.else.sw.bb54_crit_edge49, %if.else.sw.bb54_crit_edge48, %if.else.sw.bb54_crit_edge
  %tmp27 = load i32, i32* %skip_field_option_type, align 4
  %cmp55 = icmp eq i32 %tmp27, 2
  br i1 %cmp55, label %if.then57, label %sw.bb54.if.end58_crit_edge

sw.bb54.if.end58_crit_edge:                       ; preds = %sw.bb54
  br label %if.end58

if.then57:                                        ; preds = %sw.bb54
  store i64 0, i64* @skip_fields, align 8
  br label %if.end58

if.end58:                                         ; preds = %sw.bb54.if.end58_crit_edge, %if.then57
  %tmp28 = load i64, i64* @skip_fields, align 8
  %cmp59 = icmp ult i64 1844674407370955161, %tmp28
  br i1 %cmp59, label %if.end58.cond.true_crit_edge, label %lor.lhs.false61

if.end58.cond.true_crit_edge:                     ; preds = %if.end58
  br label %cond.true

lor.lhs.false61:                                  ; preds = %if.end58
  %tmp29 = load i64, i64* @skip_fields, align 8
  %mul = mul i64 %tmp29, 10
  %tmp30 = load i32, i32* %optc, align 4
  %sub = sub nsw i32 %tmp30, 48
  %conv62 = sext i32 %sub to i64
  %add = add i64 %mul, %conv62
  %tmp31 = load i64, i64* @skip_fields, align 8
  %cmp63 = icmp ult i64 %add, %tmp31
  br i1 %cmp63, label %lor.lhs.false61.cond.true_crit_edge, label %cond.false

lor.lhs.false61.cond.true_crit_edge:              ; preds = %lor.lhs.false61
  br label %cond.true

cond.true:                                        ; preds = %lor.lhs.false61.cond.true_crit_edge, %if.end58.cond.true_crit_edge
  store i32 0, i32* %cond.reg2mem
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false61
  %tmp32 = load i64, i64* @skip_fields, align 8
  %mul65 = mul i64 %tmp32, 10
  %tmp33 = load i32, i32* %optc, align 4
  %sub66 = sub nsw i32 %tmp33, 48
  %conv67 = sext i32 %sub66 to i64
  %add68 = add i64 %mul65, %conv67
  store i64 %add68, i64* @skip_fields, align 8
  store i32 1, i32* %cond.reg2mem
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond.reload = load i32, i32* %cond.reg2mem
  %tobool69 = icmp ne i32 %cond.reload, 0
  br i1 %tobool69, label %cond.end.if.end71_crit_edge, label %if.then70

cond.end.if.end71_crit_edge:                      ; preds = %cond.end
  br label %if.end71

if.then70:                                        ; preds = %cond.end
  store i64 -1, i64* @skip_fields, align 8
  br label %if.end71

if.end71:                                         ; preds = %cond.end.if.end71_crit_edge, %if.then70
  store i32 1, i32* %skip_field_option_type, align 4
  br label %sw.epilog

sw.bb72:                                          ; preds = %if.else
  store i32 0, i32* @countmode, align 4
  br label %sw.epilog

sw.bb73:                                          ; preds = %if.else
  store i8 0, i8* @output_unique, align 1
  br label %sw.epilog

sw.bb74:                                          ; preds = %if.else
  store i8 0, i8* @output_unique, align 1
  store i8 1, i8* @output_later_repeated, align 1
  %tmp34 = load i8*, i8** @optarg, align 8
  %cmp75 = icmp eq i8* %tmp34, null
  br i1 %cmp75, label %if.then77, label %if.else78

if.then77:                                        ; preds = %sw.bb74
  store i32 0, i32* @delimit_groups, align 4
  br label %if.end81

if.else78:                                        ; preds = %sw.bb74
  %tmp35 = load i8*, i8** @optarg, align 8
  %tmp36 = load void ()*, void ()** @argmatch_die, align 8
  %call79 = call i64 @__xargmatch_internal(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str18, i32 0, i32 0), i8* %tmp35, i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @delimit_method_string, i32 0, i32 0), i8* bitcast ([3 x i32]* @delimit_method_map to i8*), i64 4, void ()* %tmp36)
  %arrayidx80 = getelementptr inbounds [3 x i32], [3 x i32]* @delimit_method_map, i32 0, i64 %call79
  %tmp37 = load i32, i32* %arrayidx80, align 4
  store i32 %tmp37, i32* @delimit_groups, align 4
  br label %if.end81

if.end81:                                         ; preds = %if.else78, %if.then77
  br label %sw.epilog

sw.bb82:                                          ; preds = %if.else
  store i32 2, i32* %skip_field_option_type, align 4
  %tmp38 = load i8*, i8** @optarg, align 8
  %call83 = call i64 @size_opt(i8* %tmp38, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str19, i32 0, i32 0))
  store i64 %call83, i64* @skip_fields, align 8
  br label %sw.epilog

sw.bb84:                                          ; preds = %if.else
  store i8 1, i8* @ignore_case, align 1
  br label %sw.epilog

sw.bb85:                                          ; preds = %if.else
  %tmp39 = load i8*, i8** @optarg, align 8
  %call86 = call i64 @size_opt(i8* %tmp39, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str20, i32 0, i32 0))
  store i64 %call86, i64* @skip_chars, align 8
  br label %sw.epilog

sw.bb87:                                          ; preds = %if.else
  store i8 0, i8* @output_first_repeated, align 1
  br label %sw.epilog

sw.bb88:                                          ; preds = %if.else
  %tmp40 = load i8*, i8** @optarg, align 8
  %call89 = call i64 @size_opt(i8* %tmp40, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str21, i32 0, i32 0))
  store i64 %call89, i64* @check_chars, align 8
  br label %sw.epilog

sw.bb90:                                          ; preds = %if.else
  store i8 0, i8* %delimiter, align 1
  br label %sw.epilog

sw.bb91:                                          ; preds = %if.else
  call void @usage(i32 0)
  br label %sw.epilog

sw.bb92:                                          ; preds = %if.else
  %tmp41 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %tmp41, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str22, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str23, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str24, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str25, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str26, i32 0, i32 0), i8* null)
  call void @exit(i32 0) #12
  unreachable

sw.default:                                       ; preds = %if.else
  call void @usage(i32 1)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb91, %sw.bb90, %sw.bb88, %sw.bb87, %sw.bb85, %sw.bb84, %sw.bb82, %if.end81, %sw.bb73, %sw.bb72, %if.end71, %if.end53
  br label %if.end93

if.end93:                                         ; preds = %sw.epilog, %if.end21
  br label %for.cond

for.end:                                          ; preds = %if.then15
  %tmp42 = load i32, i32* @countmode, align 4
  %cmp94 = icmp eq i32 %tmp42, 0
  br i1 %cmp94, label %land.lhs.true96, label %for.end.if.end101_crit_edge

for.end.if.end101_crit_edge:                      ; preds = %for.end
  br label %if.end101

land.lhs.true96:                                  ; preds = %for.end
  %tmp43 = load i8, i8* @output_later_repeated, align 1
  %tobool97 = trunc i8 %tmp43 to i1
  br i1 %tobool97, label %if.then99, label %land.lhs.true96.if.end101_crit_edge

land.lhs.true96.if.end101_crit_edge:              ; preds = %land.lhs.true96
  br label %if.end101

if.then99:                                        ; preds = %land.lhs.true96
  %call100 = call i8* @gettext(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str27, i32 0, i32 0)) #8
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %call100)
  call void @usage(i32 1)
  br label %if.end101

if.end101:                                        ; preds = %land.lhs.true96.if.end101_crit_edge, %for.end.if.end101_crit_edge, %if.then99
  %arrayidx102 = getelementptr inbounds [2 x i8*], [2 x i8*]* %file, i32 0, i64 0
  %tmp44 = load i8*, i8** %arrayidx102, align 8
  %arrayidx103 = getelementptr inbounds [2 x i8*], [2 x i8*]* %file, i32 0, i64 1
  %tmp45 = load i8*, i8** %arrayidx103, align 8
  %tmp46 = load i8, i8* %delimiter, align 1
  call void @check_file(i8* %tmp44, i8* %tmp45, i8 signext %tmp46)
  call void @exit(i32 0) #12
  unreachable

return:                                           ; No predecessors!
  %tmp47 = load i32, i32* %retval
  ret i32 %tmp47
}

; Function Attrs: nounwind
declare i8* @getenv(i8*) #2

; Function Attrs: nounwind
declare i8* @setlocale(i32, i8*) #2

; Function Attrs: nounwind
declare i8* @bindtextdomain(i8*, i8*) #2

; Function Attrs: nounwind
declare i8* @textdomain(i8*) #2

; Function Attrs: nounwind
declare i32 @atexit(void ()*) #2

; Function Attrs: nounwind
declare i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) #2

declare void @error(i32, i32, i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal i64 @size_opt(i8* %opt, i8* %msgid) #0 {
entry:
  %opt.addr = alloca i8*, align 8
  %msgid.addr = alloca i8*, align 8
  %size = alloca i64, align 8
  %tmp4.reg2mem = alloca i64
  %cond.reg2mem = alloca i64
  %"reg2mem alloca point" = bitcast i32 0 to i32
  store i8* %opt, i8** %opt.addr, align 8
  store i8* %msgid, i8** %msgid.addr, align 8
  %tmp = load i8*, i8** %opt.addr, align 8
  %call = call i32 @xstrtoul(i8* %tmp, i8** null, i32 10, i64* %size, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str13, i32 0, i32 0))
  switch i32 %call, label %sw.default [
    i32 0, label %entry.sw.bb_crit_edge
    i32 1, label %entry.sw.bb_crit_edge5
  ]

entry.sw.bb_crit_edge5:                           ; preds = %entry
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  br label %sw.bb

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge5, %entry.sw.bb_crit_edge
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %tmp1 = load i8*, i8** %opt.addr, align 8
  %tmp2 = load i8*, i8** %msgid.addr, align 8
  %call1 = call i8* @gettext(i8* %tmp2) #8
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str33, i32 0, i32 0), i8* %tmp1, i8* %call1)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  %tmp3 = load i64, i64* %size, align 8
  %cmp = icmp ult i64 %tmp3, -1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.epilog
  %tmp4 = load i64, i64* %size, align 8
  store i64 %tmp4, i64* %tmp4.reg2mem
  %tmp4.reload = load i64, i64* %tmp4.reg2mem
  store i64 %tmp4.reload, i64* %cond.reg2mem
  br label %cond.end

cond.false:                                       ; preds = %sw.epilog
  store i64 -1, i64* %cond.reg2mem
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond.reload = load i64, i64* %cond.reg2mem
  ret i64 %cond.reload
}

; Function Attrs: nounwind uwtable
define internal void @check_file(i8* %infile, i8* %outfile, i8 signext %delimiter) #0 {
entry:
  %infile.addr = alloca i8*, align 8
  %outfile.addr = alloca i8*, align 8
  %delimiter.addr = alloca i8, align 1
  %lb1 = alloca %struct.linebuffer, align 8
  %lb2 = alloca %struct.linebuffer, align 8
  %thisline = alloca %struct.linebuffer*, align 8
  %prevline = alloca %struct.linebuffer*, align 8
  %prevfield = alloca i8*, align 8
  %prevlen = alloca i64, align 8
  %thisfield = alloca i8*, align 8
  %thislen = alloca i64, align 8
  %_tmp = alloca %struct.linebuffer*, align 8
  %prevfield33 = alloca i8*, align 8
  %prevlen34 = alloca i64, align 8
  %match_count = alloca i64, align 8
  %first_delimiter = alloca i8, align 1
  %match = alloca i8, align 1
  %thisfield52 = alloca i8*, align 8
  %thislen53 = alloca i64, align 8
  %_tmp110 = alloca %struct.linebuffer*, align 8
  %"reg2mem alloca point" = bitcast i32 0 to i32
  store i8* %infile, i8** %infile.addr, align 8
  store i8* %outfile, i8** %outfile.addr, align 8
  store i8 %delimiter, i8* %delimiter.addr, align 1
  %tmp = load i8*, i8** %infile.addr, align 8
  %call = call i32 @strcmp(i8* %tmp, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str12, i32 0, i32 0)) #13
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %entry.if.end_crit_edge, label %lor.lhs.false

entry.if.end_crit_edge:                           ; preds = %entry
  br label %if.end

lor.lhs.false:                                    ; preds = %entry
  %tmp1 = load i8*, i8** %infile.addr, align 8
  %tmp2 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %call1 = call %struct._IO_FILE* @freopen(i8* %tmp1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str28, i32 0, i32 0), %struct._IO_FILE* %tmp2)
  %tobool = icmp ne %struct._IO_FILE* %call1, null
  br i1 %tobool, label %lor.lhs.false.if.end_crit_edge, label %if.then

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  br label %if.end

if.then:                                          ; preds = %lor.lhs.false
  %call2 = call i32* @__errno_location() #14
  %tmp3 = load i32, i32* %call2, align 4
  %tmp4 = load i8*, i8** %infile.addr, align 8
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %tmp3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str29, i32 0, i32 0), i8* %tmp4)
  br label %if.end

if.end:                                           ; preds = %lor.lhs.false.if.end_crit_edge, %entry.if.end_crit_edge, %if.then
  %tmp5 = load i8*, i8** %outfile.addr, align 8
  %call3 = call i32 @strcmp(i8* %tmp5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str12, i32 0, i32 0)) #13
  %cmp4 = icmp eq i32 %call3, 0
  br i1 %cmp4, label %if.end.if.end10_crit_edge, label %lor.lhs.false5

if.end.if.end10_crit_edge:                        ; preds = %if.end
  br label %if.end10

lor.lhs.false5:                                   ; preds = %if.end
  %tmp6 = load i8*, i8** %outfile.addr, align 8
  %tmp7 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call6 = call %struct._IO_FILE* @freopen(i8* %tmp6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str30, i32 0, i32 0), %struct._IO_FILE* %tmp7)
  %tobool7 = icmp ne %struct._IO_FILE* %call6, null
  br i1 %tobool7, label %lor.lhs.false5.if.end10_crit_edge, label %if.then8

lor.lhs.false5.if.end10_crit_edge:                ; preds = %lor.lhs.false5
  br label %if.end10

if.then8:                                         ; preds = %lor.lhs.false5
  %call9 = call i32* @__errno_location() #14
  %tmp8 = load i32, i32* %call9, align 4
  %tmp9 = load i8*, i8** %outfile.addr, align 8
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %tmp8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str29, i32 0, i32 0), i8* %tmp9)
  br label %if.end10

if.end10:                                         ; preds = %lor.lhs.false5.if.end10_crit_edge, %if.end.if.end10_crit_edge, %if.then8
  store %struct.linebuffer* %lb1, %struct.linebuffer** %thisline, align 8
  store %struct.linebuffer* %lb2, %struct.linebuffer** %prevline, align 8
  %tmp10 = load %struct.linebuffer*, %struct.linebuffer** %thisline, align 8
  call void @initbuffer(%struct.linebuffer* %tmp10)
  %tmp11 = load %struct.linebuffer*, %struct.linebuffer** %prevline, align 8
  call void @initbuffer(%struct.linebuffer* %tmp11)
  %tmp12 = load i8, i8* @output_unique, align 1
  %tobool11 = trunc i8 %tmp12 to i1
  br i1 %tobool11, label %land.lhs.true, label %if.end10.if.else_crit_edge

if.end10.if.else_crit_edge:                       ; preds = %if.end10
  br label %if.else

land.lhs.true:                                    ; preds = %if.end10
  %tmp13 = load i8, i8* @output_first_repeated, align 1
  %tobool12 = trunc i8 %tmp13 to i1
  br i1 %tobool12, label %land.lhs.true13, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  br label %if.else

land.lhs.true13:                                  ; preds = %land.lhs.true
  %tmp14 = load i32, i32* @countmode, align 4
  %cmp14 = icmp eq i32 %tmp14, 1
  br i1 %cmp14, label %if.then15, label %land.lhs.true13.if.else_crit_edge

land.lhs.true13.if.else_crit_edge:                ; preds = %land.lhs.true13
  br label %if.else

if.then15:                                        ; preds = %land.lhs.true13
  br label %while.cond

while.cond:                                       ; preds = %if.end32, %if.then15
  %tmp15 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %call16 = call i32 @feof_unlocked(%struct._IO_FILE* %tmp15) #8
  %tobool17 = icmp ne i32 %call16, 0
  %lnot = xor i1 %tobool17, true
  br i1 %lnot, label %while.body, label %while.end.loopexit

while.body:                                       ; preds = %while.cond
  %tmp16 = load %struct.linebuffer*, %struct.linebuffer** %thisline, align 8
  %tmp17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %tmp18 = load i8, i8* %delimiter.addr, align 1
  %call18 = call %struct.linebuffer* @readlinebuffer_delim(%struct.linebuffer* %tmp16, %struct._IO_FILE* %tmp17, i8 signext %tmp18)
  %cmp19 = icmp eq %struct.linebuffer* %call18, null
  br i1 %cmp19, label %if.then20, label %if.end21

if.then20:                                        ; preds = %while.body
  br label %while.end

if.end21:                                         ; preds = %while.body
  %tmp19 = load %struct.linebuffer*, %struct.linebuffer** %thisline, align 8
  %call22 = call i8* @find_field(%struct.linebuffer* %tmp19)
  store i8* %call22, i8** %thisfield, align 8
  %tmp20 = load %struct.linebuffer*, %struct.linebuffer** %thisline, align 8
  %length = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %tmp20, i32 0, i32 1
  %tmp21 = load i64, i64* %length, align 8
  %sub = sub i64 %tmp21, 1
  %tmp22 = load i8*, i8** %thisfield, align 8
  %tmp23 = load %struct.linebuffer*, %struct.linebuffer** %thisline, align 8
  %buffer = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %tmp23, i32 0, i32 2
  %tmp24 = load i8*, i8** %buffer, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %tmp22 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %tmp24 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub23 = sub i64 %sub, %sub.ptr.sub
  store i64 %sub23, i64* %thislen, align 8
  %tmp25 = load %struct.linebuffer*, %struct.linebuffer** %prevline, align 8
  %length24 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %tmp25, i32 0, i32 1
  %tmp26 = load i64, i64* %length24, align 8
  %cmp25 = icmp eq i64 %tmp26, 0
  br i1 %cmp25, label %if.end21.if.then28_crit_edge, label %lor.lhs.false26

if.end21.if.then28_crit_edge:                     ; preds = %if.end21
  br label %if.then28

lor.lhs.false26:                                  ; preds = %if.end21
  %tmp27 = load i8*, i8** %thisfield, align 8
  %tmp28 = load i8*, i8** %prevfield, align 8
  %tmp29 = load i64, i64* %thislen, align 8
  %tmp30 = load i64, i64* %prevlen, align 8
  %call27 = call zeroext i1 @different(i8* %tmp27, i8* %tmp28, i64 %tmp29, i64 %tmp30)
  br i1 %call27, label %lor.lhs.false26.if.then28_crit_edge, label %lor.lhs.false26.if.end32_crit_edge

lor.lhs.false26.if.end32_crit_edge:               ; preds = %lor.lhs.false26
  br label %if.end32

lor.lhs.false26.if.then28_crit_edge:              ; preds = %lor.lhs.false26
  br label %if.then28

if.then28:                                        ; preds = %lor.lhs.false26.if.then28_crit_edge, %if.end21.if.then28_crit_edge
  %tmp31 = load %struct.linebuffer*, %struct.linebuffer** %thisline, align 8
  %buffer29 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %tmp31, i32 0, i32 2
  %tmp32 = load i8*, i8** %buffer29, align 8
  %tmp33 = load %struct.linebuffer*, %struct.linebuffer** %thisline, align 8
  %length30 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %tmp33, i32 0, i32 1
  %tmp34 = load i64, i64* %length30, align 8
  %tmp35 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call31 = call i64 @fwrite_unlocked(i8* %tmp32, i64 1, i64 %tmp34, %struct._IO_FILE* %tmp35)
  br label %do.body

do.body:                                          ; preds = %if.then28
  %tmp36 = load %struct.linebuffer*, %struct.linebuffer** %prevline, align 8
  store %struct.linebuffer* %tmp36, %struct.linebuffer** %_tmp, align 8
  %tmp37 = load %struct.linebuffer*, %struct.linebuffer** %thisline, align 8
  store %struct.linebuffer* %tmp37, %struct.linebuffer** %prevline, align 8
  %tmp38 = load %struct.linebuffer*, %struct.linebuffer** %_tmp, align 8
  store %struct.linebuffer* %tmp38, %struct.linebuffer** %thisline, align 8
  br label %do.end

do.end:                                           ; preds = %do.body
  %tmp39 = load i8*, i8** %thisfield, align 8
  store i8* %tmp39, i8** %prevfield, align 8
  %tmp40 = load i64, i64* %thislen, align 8
  store i64 %tmp40, i64* %prevlen, align 8
  br label %if.end32

if.end32:                                         ; preds = %lor.lhs.false26.if.end32_crit_edge, %do.end
  br label %while.cond

while.end.loopexit:                               ; preds = %while.cond
  br label %while.end

while.end:                                        ; preds = %while.end.loopexit, %if.then20
  br label %if.end117

if.else:                                          ; preds = %land.lhs.true13.if.else_crit_edge, %land.lhs.true.if.else_crit_edge, %if.end10.if.else_crit_edge
  store i64 0, i64* %match_count, align 8
  store i8 1, i8* %first_delimiter, align 1
  %tmp41 = load %struct.linebuffer*, %struct.linebuffer** %prevline, align 8
  %tmp42 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %tmp43 = load i8, i8* %delimiter.addr, align 1
  %call35 = call %struct.linebuffer* @readlinebuffer_delim(%struct.linebuffer* %tmp41, %struct._IO_FILE* %tmp42, i8 signext %tmp43)
  %cmp36 = icmp eq %struct.linebuffer* %call35, null
  br i1 %cmp36, label %if.then37, label %if.end38

if.then37:                                        ; preds = %if.else
  br label %closefiles

if.end38:                                         ; preds = %if.else
  %tmp44 = load %struct.linebuffer*, %struct.linebuffer** %prevline, align 8
  %call39 = call i8* @find_field(%struct.linebuffer* %tmp44)
  store i8* %call39, i8** %prevfield33, align 8
  %tmp45 = load %struct.linebuffer*, %struct.linebuffer** %prevline, align 8
  %length40 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %tmp45, i32 0, i32 1
  %tmp46 = load i64, i64* %length40, align 8
  %sub41 = sub i64 %tmp46, 1
  %tmp47 = load i8*, i8** %prevfield33, align 8
  %tmp48 = load %struct.linebuffer*, %struct.linebuffer** %prevline, align 8
  %buffer42 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %tmp48, i32 0, i32 2
  %tmp49 = load i8*, i8** %buffer42, align 8
  %sub.ptr.lhs.cast43 = ptrtoint i8* %tmp47 to i64
  %sub.ptr.rhs.cast44 = ptrtoint i8* %tmp49 to i64
  %sub.ptr.sub45 = sub i64 %sub.ptr.lhs.cast43, %sub.ptr.rhs.cast44
  %sub46 = sub i64 %sub41, %sub.ptr.sub45
  store i64 %sub46, i64* %prevlen34, align 8
  br label %while.cond47

while.cond47:                                     ; preds = %if.end115, %if.end38
  %tmp50 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %call48 = call i32 @feof_unlocked(%struct._IO_FILE* %tmp50) #8
  %tobool49 = icmp ne i32 %call48, 0
  %lnot50 = xor i1 %tobool49, true
  br i1 %lnot50, label %while.body51, label %while.end116.loopexit

while.body51:                                     ; preds = %while.cond47
  %tmp51 = load %struct.linebuffer*, %struct.linebuffer** %thisline, align 8
  %tmp52 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %tmp53 = load i8, i8* %delimiter.addr, align 1
  %call54 = call %struct.linebuffer* @readlinebuffer_delim(%struct.linebuffer* %tmp51, %struct._IO_FILE* %tmp52, i8 signext %tmp53)
  %cmp55 = icmp eq %struct.linebuffer* %call54, null
  br i1 %cmp55, label %if.then56, label %if.end61

if.then56:                                        ; preds = %while.body51
  %tmp54 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %call57 = call i32 @ferror_unlocked(%struct._IO_FILE* %tmp54) #8
  %tobool58 = icmp ne i32 %call57, 0
  br i1 %tobool58, label %if.then59, label %if.end60

if.then59:                                        ; preds = %if.then56
  br label %closefiles

if.end60:                                         ; preds = %if.then56
  br label %while.end116

if.end61:                                         ; preds = %while.body51
  %tmp55 = load %struct.linebuffer*, %struct.linebuffer** %thisline, align 8
  %call62 = call i8* @find_field(%struct.linebuffer* %tmp55)
  store i8* %call62, i8** %thisfield52, align 8
  %tmp56 = load %struct.linebuffer*, %struct.linebuffer** %thisline, align 8
  %length63 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %tmp56, i32 0, i32 1
  %tmp57 = load i64, i64* %length63, align 8
  %sub64 = sub i64 %tmp57, 1
  %tmp58 = load i8*, i8** %thisfield52, align 8
  %tmp59 = load %struct.linebuffer*, %struct.linebuffer** %thisline, align 8
  %buffer65 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %tmp59, i32 0, i32 2
  %tmp60 = load i8*, i8** %buffer65, align 8
  %sub.ptr.lhs.cast66 = ptrtoint i8* %tmp58 to i64
  %sub.ptr.rhs.cast67 = ptrtoint i8* %tmp60 to i64
  %sub.ptr.sub68 = sub i64 %sub.ptr.lhs.cast66, %sub.ptr.rhs.cast67
  %sub69 = sub i64 %sub64, %sub.ptr.sub68
  store i64 %sub69, i64* %thislen53, align 8
  %tmp61 = load i8*, i8** %thisfield52, align 8
  %tmp62 = load i8*, i8** %prevfield33, align 8
  %tmp63 = load i64, i64* %thislen53, align 8
  %tmp64 = load i64, i64* %prevlen34, align 8
  %call70 = call zeroext i1 @different(i8* %tmp61, i8* %tmp62, i64 %tmp63, i64 %tmp64)
  %lnot71 = xor i1 %call70, true
  %frombool = zext i1 %lnot71 to i8
  store i8 %frombool, i8* %match, align 1
  %tmp65 = load i8, i8* %match, align 1
  %tobool72 = trunc i8 %tmp65 to i1
  %conv = zext i1 %tobool72 to i64
  %tmp66 = load i64, i64* %match_count, align 8
  %add = add i64 %tmp66, %conv
  store i64 %add, i64* %match_count, align 8
  %tmp67 = load i64, i64* %match_count, align 8
  %cmp73 = icmp eq i64 %tmp67, -1
  br i1 %cmp73, label %if.then75, label %if.end61.if.end76_crit_edge

if.end61.if.end76_crit_edge:                      ; preds = %if.end61
  br label %if.end76

if.then75:                                        ; preds = %if.end61
  %tmp68 = load i64, i64* %match_count, align 8
  %dec = add i64 %tmp68, -1
  store i64 %dec, i64* %match_count, align 8
  br label %if.end76

if.end76:                                         ; preds = %if.end61.if.end76_crit_edge, %if.then75
  %tmp69 = load i32, i32* @delimit_groups, align 4
  %cmp77 = icmp ne i32 %tmp69, 0
  br i1 %cmp77, label %if.then79, label %if.end76.if.end102_crit_edge

if.end76.if.end102_crit_edge:                     ; preds = %if.end76
  br label %if.end102

if.then79:                                        ; preds = %if.end76
  %tmp70 = load i8, i8* %match, align 1
  %tobool80 = trunc i8 %tmp70 to i1
  br i1 %tobool80, label %if.else85, label %if.then81

if.then81:                                        ; preds = %if.then79
  %tmp71 = load i64, i64* %match_count, align 8
  %tobool82 = icmp ne i64 %tmp71, 0
  br i1 %tobool82, label %if.then83, label %if.then81.if.end84_crit_edge

if.then81.if.end84_crit_edge:                     ; preds = %if.then81
  br label %if.end84

if.then83:                                        ; preds = %if.then81
  store i8 0, i8* %first_delimiter, align 1
  br label %if.end84

if.end84:                                         ; preds = %if.then81.if.end84_crit_edge, %if.then83
  br label %if.end101

if.else85:                                        ; preds = %if.then79
  %tmp72 = load i64, i64* %match_count, align 8
  %cmp86 = icmp eq i64 %tmp72, 1
  br i1 %cmp86, label %if.then88, label %if.else85.if.end100_crit_edge

if.else85.if.end100_crit_edge:                    ; preds = %if.else85
  br label %if.end100

if.then88:                                        ; preds = %if.else85
  %tmp73 = load i32, i32* @delimit_groups, align 4
  %cmp89 = icmp eq i32 %tmp73, 1
  br i1 %cmp89, label %if.then88.if.then96_crit_edge, label %lor.lhs.false91

if.then88.if.then96_crit_edge:                    ; preds = %if.then88
  br label %if.then96

lor.lhs.false91:                                  ; preds = %if.then88
  %tmp74 = load i32, i32* @delimit_groups, align 4
  %cmp92 = icmp eq i32 %tmp74, 2
  br i1 %cmp92, label %land.lhs.true94, label %lor.lhs.false91.if.end99_crit_edge

lor.lhs.false91.if.end99_crit_edge:               ; preds = %lor.lhs.false91
  br label %if.end99

land.lhs.true94:                                  ; preds = %lor.lhs.false91
  %tmp75 = load i8, i8* %first_delimiter, align 1
  %tobool95 = trunc i8 %tmp75 to i1
  br i1 %tobool95, label %land.lhs.true94.if.end99_crit_edge, label %land.lhs.true94.if.then96_crit_edge

land.lhs.true94.if.then96_crit_edge:              ; preds = %land.lhs.true94
  br label %if.then96

land.lhs.true94.if.end99_crit_edge:               ; preds = %land.lhs.true94
  br label %if.end99

if.then96:                                        ; preds = %land.lhs.true94.if.then96_crit_edge, %if.then88.if.then96_crit_edge
  %tmp76 = load i8, i8* %delimiter.addr, align 1
  %conv97 = sext i8 %tmp76 to i32
  %call98 = call i32 @putchar_unlocked(i32 %conv97)
  br label %if.end99

if.end99:                                         ; preds = %land.lhs.true94.if.end99_crit_edge, %lor.lhs.false91.if.end99_crit_edge, %if.then96
  br label %if.end100

if.end100:                                        ; preds = %if.else85.if.end100_crit_edge, %if.end99
  br label %if.end101

if.end101:                                        ; preds = %if.end100, %if.end84
  br label %if.end102

if.end102:                                        ; preds = %if.end76.if.end102_crit_edge, %if.end101
  %tmp77 = load i8, i8* %match, align 1
  %tobool103 = trunc i8 %tmp77 to i1
  br i1 %tobool103, label %lor.lhs.false104, label %if.end102.if.then107_crit_edge

if.end102.if.then107_crit_edge:                   ; preds = %if.end102
  br label %if.then107

lor.lhs.false104:                                 ; preds = %if.end102
  %tmp78 = load i8, i8* @output_later_repeated, align 1
  %tobool105 = trunc i8 %tmp78 to i1
  br i1 %tobool105, label %lor.lhs.false104.if.then107_crit_edge, label %lor.lhs.false104.if.end115_crit_edge

lor.lhs.false104.if.end115_crit_edge:             ; preds = %lor.lhs.false104
  br label %if.end115

lor.lhs.false104.if.then107_crit_edge:            ; preds = %lor.lhs.false104
  br label %if.then107

if.then107:                                       ; preds = %lor.lhs.false104.if.then107_crit_edge, %if.end102.if.then107_crit_edge
  %tmp79 = load %struct.linebuffer*, %struct.linebuffer** %prevline, align 8
  %tmp80 = load i8, i8* %match, align 1
  %tobool108 = trunc i8 %tmp80 to i1
  %tmp81 = load i64, i64* %match_count, align 8
  call void @writeline(%struct.linebuffer* %tmp79, i1 zeroext %tobool108, i64 %tmp81)
  br label %do.body109

do.body109:                                       ; preds = %if.then107
  %tmp82 = load %struct.linebuffer*, %struct.linebuffer** %prevline, align 8
  store %struct.linebuffer* %tmp82, %struct.linebuffer** %_tmp110, align 8
  %tmp83 = load %struct.linebuffer*, %struct.linebuffer** %thisline, align 8
  store %struct.linebuffer* %tmp83, %struct.linebuffer** %prevline, align 8
  %tmp84 = load %struct.linebuffer*, %struct.linebuffer** %_tmp110, align 8
  store %struct.linebuffer* %tmp84, %struct.linebuffer** %thisline, align 8
  br label %do.end111

do.end111:                                        ; preds = %do.body109
  %tmp85 = load i8*, i8** %thisfield52, align 8
  store i8* %tmp85, i8** %prevfield33, align 8
  %tmp86 = load i64, i64* %thislen53, align 8
  store i64 %tmp86, i64* %prevlen34, align 8
  %tmp87 = load i8, i8* %match, align 1
  %tobool112 = trunc i8 %tmp87 to i1
  br i1 %tobool112, label %do.end111.if.end114_crit_edge, label %if.then113

do.end111.if.end114_crit_edge:                    ; preds = %do.end111
  br label %if.end114

if.then113:                                       ; preds = %do.end111
  store i64 0, i64* %match_count, align 8
  br label %if.end114

if.end114:                                        ; preds = %do.end111.if.end114_crit_edge, %if.then113
  br label %if.end115

if.end115:                                        ; preds = %lor.lhs.false104.if.end115_crit_edge, %if.end114
  br label %while.cond47

while.end116.loopexit:                            ; preds = %while.cond47
  br label %while.end116

while.end116:                                     ; preds = %while.end116.loopexit, %if.end60
  %tmp88 = load %struct.linebuffer*, %struct.linebuffer** %prevline, align 8
  %tmp89 = load i64, i64* %match_count, align 8
  call void @writeline(%struct.linebuffer* %tmp88, i1 zeroext false, i64 %tmp89)
  br label %if.end117

if.end117:                                        ; preds = %while.end116, %while.end
  br label %closefiles

closefiles:                                       ; preds = %if.end117, %if.then59, %if.then37
  %tmp90 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %call118 = call i32 @ferror_unlocked(%struct._IO_FILE* %tmp90) #8
  %tobool119 = icmp ne i32 %call118, 0
  br i1 %tobool119, label %closefiles.if.then124_crit_edge, label %lor.lhs.false120

closefiles.if.then124_crit_edge:                  ; preds = %closefiles
  br label %if.then124

lor.lhs.false120:                                 ; preds = %closefiles
  %tmp91 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %call121 = call i32 @fclose(%struct._IO_FILE* %tmp91)
  %cmp122 = icmp ne i32 %call121, 0
  br i1 %cmp122, label %lor.lhs.false120.if.then124_crit_edge, label %lor.lhs.false120.if.end126_crit_edge

lor.lhs.false120.if.end126_crit_edge:             ; preds = %lor.lhs.false120
  br label %if.end126

lor.lhs.false120.if.then124_crit_edge:            ; preds = %lor.lhs.false120
  br label %if.then124

if.then124:                                       ; preds = %lor.lhs.false120.if.then124_crit_edge, %closefiles.if.then124_crit_edge
  %call125 = call i8* @gettext(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str31, i32 0, i32 0)) #8
  %tmp92 = load i8*, i8** %infile.addr, align 8
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %call125, i8* %tmp92)
  br label %if.end126

if.end126:                                        ; preds = %lor.lhs.false120.if.end126_crit_edge, %if.then124
  %buffer127 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %lb1, i32 0, i32 2
  %tmp93 = load i8*, i8** %buffer127, align 8
  call void @free(i8* %tmp93) #8
  %buffer128 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %lb2, i32 0, i32 2
  %tmp94 = load i8*, i8** %buffer128, align 8
  call void @free(i8* %tmp94) #8
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #5

declare %struct._IO_FILE* @freopen(i8*, i8*, %struct._IO_FILE*) #1

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #6

; Function Attrs: nounwind
declare i32 @feof_unlocked(%struct._IO_FILE*) #2

; Function Attrs: nounwind uwtable
define internal i8* @find_field(%struct.linebuffer* %line) #0 {
entry:
  %line.addr = alloca %struct.linebuffer*, align 8
  %count = alloca i64, align 8
  %lp = alloca i8*, align 8
  %size = alloca i64, align 8
  %i = alloca i64, align 8
  %lnot.reg2mem = alloca i1
  %tobool.reg2mem = alloca i1
  %tmp24.reg2mem = alloca i1
  %tmp15.reg2mem = alloca i1
  %"reg2mem alloca point" = bitcast i32 0 to i32
  store %struct.linebuffer* %line, %struct.linebuffer** %line.addr, align 8
  %tmp = load %struct.linebuffer*, %struct.linebuffer** %line.addr, align 8
  %buffer = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %tmp, i32 0, i32 2
  %tmp1 = load i8*, i8** %buffer, align 8
  store i8* %tmp1, i8** %lp, align 8
  %tmp2 = load %struct.linebuffer*, %struct.linebuffer** %line.addr, align 8
  %length = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %tmp2, i32 0, i32 1
  %tmp3 = load i64, i64* %length, align 8
  %sub = sub i64 %tmp3, 1
  store i64 %sub, i64* %size, align 8
  store i64 0, i64* %i, align 8
  store i64 0, i64* %count, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %tmp4 = load i64, i64* %count, align 8
  %tmp5 = load i64, i64* @skip_fields, align 8
  %cmp = icmp ult i64 %tmp4, %tmp5
  br i1 %cmp, label %land.lhs.true, label %for.cond.for.end_crit_edge

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  br label %for.end

land.lhs.true:                                    ; preds = %for.cond
  %tmp6 = load i64, i64* %i, align 8
  %tmp7 = load i64, i64* %size, align 8
  %cmp1 = icmp ult i64 %tmp6, %tmp7
  br i1 %cmp1, label %for.body, label %land.lhs.true.for.end_crit_edge

land.lhs.true.for.end_crit_edge:                  ; preds = %land.lhs.true
  br label %for.end

for.body:                                         ; preds = %land.lhs.true
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.body
  %tmp8 = load i64, i64* %i, align 8
  %tmp9 = load i64, i64* %size, align 8
  %cmp2 = icmp ult i64 %tmp8, %tmp9
  br i1 %cmp2, label %land.rhs, label %while.cond.land.end_crit_edge

while.cond.land.end_crit_edge:                    ; preds = %while.cond
  store i1 false, i1* %tmp15.reg2mem
  br label %land.end

land.rhs:                                         ; preds = %while.cond
  %tmp10 = load i64, i64* %i, align 8
  %tmp11 = load i8*, i8** %lp, align 8
  %arrayidx = getelementptr inbounds i8, i8* %tmp11, i64 %tmp10
  %tmp12 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %tmp12 to i32
  %idxprom = sext i32 %conv to i64
  %call = call i16** @__ctype_b_loc() #14
  %tmp13 = load i16*, i16** %call, align 8
  %arrayidx3 = getelementptr inbounds i16, i16* %tmp13, i64 %idxprom
  %tmp14 = load i16, i16* %arrayidx3, align 2
  %conv4 = zext i16 %tmp14 to i32
  %and = and i32 %conv4, 1
  %tobool = icmp ne i32 %and, 0
  store i1 %tobool, i1* %tobool.reg2mem
  %tobool.reload = load i1, i1* %tobool.reg2mem
  store i1 %tobool.reload, i1* %tmp15.reg2mem
  br label %land.end

land.end:                                         ; preds = %while.cond.land.end_crit_edge, %land.rhs
  %tmp15.reload = load i1, i1* %tmp15.reg2mem
  br i1 %tmp15.reload, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %tmp16 = load i64, i64* %i, align 8
  %inc = add i64 %tmp16, 1
  store i64 %inc, i64* %i, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  br label %while.cond5

while.cond5:                                      ; preds = %while.body18, %while.end
  %tmp17 = load i64, i64* %i, align 8
  %tmp18 = load i64, i64* %size, align 8
  %cmp6 = icmp ult i64 %tmp17, %tmp18
  br i1 %cmp6, label %land.rhs8, label %while.cond5.land.end17_crit_edge

while.cond5.land.end17_crit_edge:                 ; preds = %while.cond5
  store i1 false, i1* %tmp24.reg2mem
  br label %land.end17

land.rhs8:                                        ; preds = %while.cond5
  %tmp19 = load i64, i64* %i, align 8
  %tmp20 = load i8*, i8** %lp, align 8
  %arrayidx9 = getelementptr inbounds i8, i8* %tmp20, i64 %tmp19
  %tmp21 = load i8, i8* %arrayidx9, align 1
  %conv10 = sext i8 %tmp21 to i32
  %idxprom11 = sext i32 %conv10 to i64
  %call12 = call i16** @__ctype_b_loc() #14
  %tmp22 = load i16*, i16** %call12, align 8
  %arrayidx13 = getelementptr inbounds i16, i16* %tmp22, i64 %idxprom11
  %tmp23 = load i16, i16* %arrayidx13, align 2
  %conv14 = zext i16 %tmp23 to i32
  %and15 = and i32 %conv14, 1
  %tobool16 = icmp ne i32 %and15, 0
  %lnot = xor i1 %tobool16, true
  store i1 %lnot, i1* %lnot.reg2mem
  %lnot.reload = load i1, i1* %lnot.reg2mem
  store i1 %lnot.reload, i1* %tmp24.reg2mem
  br label %land.end17

land.end17:                                       ; preds = %while.cond5.land.end17_crit_edge, %land.rhs8
  %tmp24.reload = load i1, i1* %tmp24.reg2mem
  br i1 %tmp24.reload, label %while.body18, label %while.end20

while.body18:                                     ; preds = %land.end17
  %tmp25 = load i64, i64* %i, align 8
  %inc19 = add i64 %tmp25, 1
  store i64 %inc19, i64* %i, align 8
  br label %while.cond5

while.end20:                                      ; preds = %land.end17
  br label %for.inc

for.inc:                                          ; preds = %while.end20
  %tmp26 = load i64, i64* %count, align 8
  %inc21 = add i64 %tmp26, 1
  store i64 %inc21, i64* %count, align 8
  br label %for.cond

for.end:                                          ; preds = %land.lhs.true.for.end_crit_edge, %for.cond.for.end_crit_edge
  store i64 0, i64* %count, align 8
  br label %for.cond22

for.cond22:                                       ; preds = %for.inc30, %for.end
  %tmp27 = load i64, i64* %count, align 8
  %tmp28 = load i64, i64* @skip_chars, align 8
  %cmp23 = icmp ult i64 %tmp27, %tmp28
  br i1 %cmp23, label %land.lhs.true25, label %for.cond22.for.end32_crit_edge

for.cond22.for.end32_crit_edge:                   ; preds = %for.cond22
  br label %for.end32

land.lhs.true25:                                  ; preds = %for.cond22
  %tmp29 = load i64, i64* %i, align 8
  %tmp30 = load i64, i64* %size, align 8
  %cmp26 = icmp ult i64 %tmp29, %tmp30
  br i1 %cmp26, label %for.body28, label %land.lhs.true25.for.end32_crit_edge

land.lhs.true25.for.end32_crit_edge:              ; preds = %land.lhs.true25
  br label %for.end32

for.body28:                                       ; preds = %land.lhs.true25
  %tmp31 = load i64, i64* %i, align 8
  %inc29 = add i64 %tmp31, 1
  store i64 %inc29, i64* %i, align 8
  br label %for.inc30

for.inc30:                                        ; preds = %for.body28
  %tmp32 = load i64, i64* %count, align 8
  %inc31 = add i64 %tmp32, 1
  store i64 %inc31, i64* %count, align 8
  br label %for.cond22

for.end32:                                        ; preds = %land.lhs.true25.for.end32_crit_edge, %for.cond22.for.end32_crit_edge
  %tmp33 = load i8*, i8** %lp, align 8
  %tmp34 = load i64, i64* %i, align 8
  %add.ptr = getelementptr inbounds i8, i8* %tmp33, i64 %tmp34
  ret i8* %add.ptr
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @different(i8* %old, i8* %new, i64 %oldlen, i64 %newlen) #0 {
entry:
  %retval = alloca i1, align 1
  %old.addr = alloca i8*, align 8
  %new.addr = alloca i8*, align 8
  %oldlen.addr = alloca i64, align 8
  %newlen.addr = alloca i64, align 8
  %tobool15.reg2mem = alloca i1
  %tobool6.reg2mem = alloca i1
  %tmp23.reg2mem = alloca i1
  %tmp12.reg2mem = alloca i1
  %"reg2mem alloca point" = bitcast i32 0 to i32
  store i8* %old, i8** %old.addr, align 8
  store i8* %new, i8** %new.addr, align 8
  store i64 %oldlen, i64* %oldlen.addr, align 8
  store i64 %newlen, i64* %newlen.addr, align 8
  %tmp = load i64, i64* @check_chars, align 8
  %tmp1 = load i64, i64* %oldlen.addr, align 8
  %cmp = icmp ult i64 %tmp, %tmp1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  br label %if.end

if.then:                                          ; preds = %entry
  %tmp2 = load i64, i64* @check_chars, align 8
  store i64 %tmp2, i64* %oldlen.addr, align 8
  br label %if.end

if.end:                                           ; preds = %entry.if.end_crit_edge, %if.then
  %tmp3 = load i64, i64* @check_chars, align 8
  %tmp4 = load i64, i64* %newlen.addr, align 8
  %cmp1 = icmp ult i64 %tmp3, %tmp4
  br i1 %cmp1, label %if.then2, label %if.end.if.end3_crit_edge

if.end.if.end3_crit_edge:                         ; preds = %if.end
  br label %if.end3

if.then2:                                         ; preds = %if.end
  %tmp5 = load i64, i64* @check_chars, align 8
  store i64 %tmp5, i64* %newlen.addr, align 8
  br label %if.end3

if.end3:                                          ; preds = %if.end.if.end3_crit_edge, %if.then2
  %tmp6 = load i8, i8* @ignore_case, align 1
  %tobool = trunc i8 %tmp6 to i1
  br i1 %tobool, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end3
  %tmp7 = load i64, i64* %oldlen.addr, align 8
  %tmp8 = load i64, i64* %newlen.addr, align 8
  %cmp5 = icmp ne i64 %tmp7, %tmp8
  br i1 %cmp5, label %if.then4.lor.end_crit_edge, label %lor.rhs

if.then4.lor.end_crit_edge:                       ; preds = %if.then4
  store i1 true, i1* %tmp12.reg2mem
  br label %lor.end

lor.rhs:                                          ; preds = %if.then4
  %tmp9 = load i8*, i8** %old.addr, align 8
  %tmp10 = load i8*, i8** %new.addr, align 8
  %tmp11 = load i64, i64* %oldlen.addr, align 8
  %call = call i32 @memcasecmp(i8* %tmp9, i8* %tmp10, i64 %tmp11)
  %tobool6 = icmp ne i32 %call, 0
  store i1 %tobool6, i1* %tobool6.reg2mem
  %tobool6.reload = load i1, i1* %tobool6.reg2mem
  store i1 %tobool6.reload, i1* %tmp12.reg2mem
  br label %lor.end

lor.end:                                          ; preds = %if.then4.lor.end_crit_edge, %lor.rhs
  %tmp12.reload = load i1, i1* %tmp12.reg2mem
  store i1 %tmp12.reload, i1* %retval
  br label %return

if.else:                                          ; preds = %if.end3
  %tmp13 = load i8, i8* @hard_LC_COLLATE, align 1
  %tobool7 = trunc i8 %tmp13 to i1
  br i1 %tobool7, label %if.then8, label %if.else11

if.then8:                                         ; preds = %if.else
  %tmp14 = load i8*, i8** %old.addr, align 8
  %tmp15 = load i64, i64* %oldlen.addr, align 8
  %tmp16 = load i8*, i8** %new.addr, align 8
  %tmp17 = load i64, i64* %newlen.addr, align 8
  %call9 = call i32 @xmemcoll(i8* %tmp14, i64 %tmp15, i8* %tmp16, i64 %tmp17)
  %cmp10 = icmp ne i32 %call9, 0
  store i1 %cmp10, i1* %retval
  br label %return

if.else11:                                        ; preds = %if.else
  %tmp18 = load i64, i64* %oldlen.addr, align 8
  %tmp19 = load i64, i64* %newlen.addr, align 8
  %cmp12 = icmp ne i64 %tmp18, %tmp19
  br i1 %cmp12, label %if.else11.lor.end16_crit_edge, label %lor.rhs13

if.else11.lor.end16_crit_edge:                    ; preds = %if.else11
  store i1 true, i1* %tmp23.reg2mem
  br label %lor.end16

lor.rhs13:                                        ; preds = %if.else11
  %tmp20 = load i8*, i8** %old.addr, align 8
  %tmp21 = load i8*, i8** %new.addr, align 8
  %tmp22 = load i64, i64* %oldlen.addr, align 8
  %call14 = call i32 @memcmp(i8* %tmp20, i8* %tmp21, i64 %tmp22) #13
  %tobool15 = icmp ne i32 %call14, 0
  store i1 %tobool15, i1* %tobool15.reg2mem
  %tobool15.reload = load i1, i1* %tobool15.reg2mem
  store i1 %tobool15.reload, i1* %tmp23.reg2mem
  br label %lor.end16

lor.end16:                                        ; preds = %if.else11.lor.end16_crit_edge, %lor.rhs13
  %tmp23.reload = load i1, i1* %tmp23.reg2mem
  store i1 %tmp23.reload, i1* %retval
  br label %return

return:                                           ; preds = %lor.end16, %if.then8, %lor.end
  %tmp24 = load i1, i1* %retval
  ret i1 %tmp24
}

declare i64 @fwrite_unlocked(i8*, i64, i64, %struct._IO_FILE*) #1

; Function Attrs: nounwind
declare i32 @ferror_unlocked(%struct._IO_FILE*) #2

declare i32 @putchar_unlocked(i32) #1

; Function Attrs: nounwind uwtable
define internal void @writeline(%struct.linebuffer* %line, i1 zeroext %match, i64 %linecount) #0 {
entry:
  %line.addr = alloca %struct.linebuffer*, align 8
  %match.addr = alloca i8, align 1
  %linecount.addr = alloca i64, align 8
  %"reg2mem alloca point" = bitcast i32 0 to i32
  store %struct.linebuffer* %line, %struct.linebuffer** %line.addr, align 8
  %frombool = zext i1 %match to i8
  store i8 %frombool, i8* %match.addr, align 1
  store i64 %linecount, i64* %linecount.addr, align 8
  %tmp = load i64, i64* %linecount.addr, align 8
  %cmp = icmp eq i64 %tmp, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %tmp1 = load i8, i8* @output_unique, align 1
  %tobool = trunc i8 %tmp1 to i1
  br i1 %tobool, label %cond.true.if.end_crit_edge, label %cond.true.if.then_crit_edge

cond.true.if.then_crit_edge:                      ; preds = %cond.true
  br label %if.then

cond.true.if.end_crit_edge:                       ; preds = %cond.true
  br label %if.end

cond.false:                                       ; preds = %entry
  %tmp2 = load i8, i8* %match.addr, align 1
  %tobool1 = trunc i8 %tmp2 to i1
  br i1 %tobool1, label %cond.false4, label %cond.true2

cond.true2:                                       ; preds = %cond.false
  %tmp3 = load i8, i8* @output_first_repeated, align 1
  %tobool3 = trunc i8 %tmp3 to i1
  br i1 %tobool3, label %cond.true2.if.end_crit_edge, label %cond.true2.if.then_crit_edge

cond.true2.if.then_crit_edge:                     ; preds = %cond.true2
  br label %if.then

cond.true2.if.end_crit_edge:                      ; preds = %cond.true2
  br label %if.end

cond.false4:                                      ; preds = %cond.false
  %tmp4 = load i8, i8* @output_later_repeated, align 1
  %tobool5 = trunc i8 %tmp4 to i1
  br i1 %tobool5, label %cond.false4.if.end_crit_edge, label %cond.false4.if.then_crit_edge

cond.false4.if.then_crit_edge:                    ; preds = %cond.false4
  br label %if.then

cond.false4.if.end_crit_edge:                     ; preds = %cond.false4
  br label %if.end

if.then:                                          ; preds = %cond.false4.if.then_crit_edge, %cond.true2.if.then_crit_edge, %cond.true.if.then_crit_edge
  br label %return

if.end:                                           ; preds = %cond.false4.if.end_crit_edge, %cond.true2.if.end_crit_edge, %cond.true.if.end_crit_edge
  %tmp5 = load i32, i32* @countmode, align 4
  %cmp6 = icmp eq i32 %tmp5, 0
  br i1 %cmp6, label %if.then7, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  br label %if.end8

if.then7:                                         ; preds = %if.end
  %tmp6 = load i64, i64* %linecount.addr, align 8
  %add = add i64 %tmp6, 1
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str32, i32 0, i32 0), i64 %add)
  br label %if.end8

if.end8:                                          ; preds = %if.end.if.end8_crit_edge, %if.then7
  %tmp7 = load %struct.linebuffer*, %struct.linebuffer** %line.addr, align 8
  %buffer = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %tmp7, i32 0, i32 2
  %tmp8 = load i8*, i8** %buffer, align 8
  %tmp9 = load %struct.linebuffer*, %struct.linebuffer** %line.addr, align 8
  %length = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %tmp9, i32 0, i32 1
  %tmp10 = load i64, i64* %length, align 8
  %tmp11 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call9 = call i64 @fwrite_unlocked(i8* %tmp8, i64 1, i64 %tmp10, %struct._IO_FILE* %tmp11)
  br label %return

return:                                           ; preds = %if.end8, %if.then
  ret void
}

declare i32 @fclose(%struct._IO_FILE*) #1

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8*, i8*, i64) #5

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #6

; Function Attrs: nounwind uwtable
define void @initbuffer(%struct.linebuffer* %linebuffer) #0 {
entry:
  %linebuffer.addr = alloca %struct.linebuffer*, align 8
  %"reg2mem alloca point" = bitcast i32 0 to i32
  store %struct.linebuffer* %linebuffer, %struct.linebuffer** %linebuffer.addr, align 8
  %tmp = load %struct.linebuffer*, %struct.linebuffer** %linebuffer.addr, align 8
  %tmp1 = bitcast %struct.linebuffer* %tmp to i8*
  call void @llvm.memset.p0i8.i64(i8* %tmp1, i8 0, i64 24, i32 8, i1 false)
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #7

; Function Attrs: nounwind uwtable
define %struct.linebuffer* @readlinebuffer(%struct.linebuffer* %linebuffer, %struct._IO_FILE* %stream) #0 {
entry:
  %linebuffer.addr = alloca %struct.linebuffer*, align 8
  %stream.addr = alloca %struct._IO_FILE*, align 8
  %"reg2mem alloca point" = bitcast i32 0 to i32
  store %struct.linebuffer* %linebuffer, %struct.linebuffer** %linebuffer.addr, align 8
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8
  %tmp = load %struct.linebuffer*, %struct.linebuffer** %linebuffer.addr, align 8
  %tmp1 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call = call %struct.linebuffer* @readlinebuffer_delim(%struct.linebuffer* %tmp, %struct._IO_FILE* %tmp1, i8 signext 10)
  ret %struct.linebuffer* %call
}

; Function Attrs: nounwind uwtable
define %struct.linebuffer* @readlinebuffer_delim(%struct.linebuffer* %linebuffer, %struct._IO_FILE* %stream, i8 signext %delimiter) #0 {
entry:
  %retval = alloca %struct.linebuffer*, align 8
  %linebuffer.addr = alloca %struct.linebuffer*, align 8
  %stream.addr = alloca %struct._IO_FILE*, align 8
  %delimiter.addr = alloca i8, align 1
  %c = alloca i32, align 4
  %buffer = alloca i8*, align 8
  %p = alloca i8*, align 8
  %end = alloca i8*, align 8
  %oldsize = alloca i64, align 8
  %"reg2mem alloca point" = bitcast i32 0 to i32
  store %struct.linebuffer* %linebuffer, %struct.linebuffer** %linebuffer.addr, align 8
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8
  store i8 %delimiter, i8* %delimiter.addr, align 1
  %tmp = load %struct.linebuffer*, %struct.linebuffer** %linebuffer.addr, align 8
  %buffer1 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %tmp, i32 0, i32 2
  %tmp1 = load i8*, i8** %buffer1, align 8
  store i8* %tmp1, i8** %buffer, align 8
  %tmp2 = load %struct.linebuffer*, %struct.linebuffer** %linebuffer.addr, align 8
  %buffer2 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %tmp2, i32 0, i32 2
  %tmp3 = load i8*, i8** %buffer2, align 8
  store i8* %tmp3, i8** %p, align 8
  %tmp4 = load i8*, i8** %buffer, align 8
  %tmp5 = load %struct.linebuffer*, %struct.linebuffer** %linebuffer.addr, align 8
  %size = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %tmp5, i32 0, i32 0
  %tmp6 = load i64, i64* %size, align 8
  %add.ptr = getelementptr inbounds i8, i8* %tmp4, i64 %tmp6
  store i8* %add.ptr, i8** %end, align 8
  %tmp7 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call = call i32 @feof_unlocked(%struct._IO_FILE* %tmp7) #8
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.linebuffer* null, %struct.linebuffer** %retval
  br label %return

if.end:                                           ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %do.cond.do.body_crit_edge, %if.end
  %tmp8 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call3 = call i32 @getc_unlocked(%struct._IO_FILE* %tmp8)
  store i32 %call3, i32* %c, align 4
  %tmp9 = load i32, i32* %c, align 4
  %cmp = icmp eq i32 %tmp9, -1
  br i1 %cmp, label %if.then4, label %do.body.if.end16_crit_edge

do.body.if.end16_crit_edge:                       ; preds = %do.body
  br label %if.end16

if.then4:                                         ; preds = %do.body
  %tmp10 = load i8*, i8** %p, align 8
  %tmp11 = load i8*, i8** %buffer, align 8
  %cmp5 = icmp eq i8* %tmp10, %tmp11
  br i1 %cmp5, label %if.then4.if.then8_crit_edge, label %lor.lhs.false

if.then4.if.then8_crit_edge:                      ; preds = %if.then4
  br label %if.then8

lor.lhs.false:                                    ; preds = %if.then4
  %tmp12 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call6 = call i32 @ferror_unlocked(%struct._IO_FILE* %tmp12) #8
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %lor.lhs.false.if.then8_crit_edge, label %if.end9

lor.lhs.false.if.then8_crit_edge:                 ; preds = %lor.lhs.false
  br label %if.then8

if.then8:                                         ; preds = %lor.lhs.false.if.then8_crit_edge, %if.then4.if.then8_crit_edge
  store %struct.linebuffer* null, %struct.linebuffer** %retval
  br label %return

if.end9:                                          ; preds = %lor.lhs.false
  %tmp13 = load i8*, i8** %p, align 8
  %arrayidx = getelementptr inbounds i8, i8* %tmp13, i64 -1
  %tmp14 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %tmp14 to i32
  %tmp15 = load i8, i8* %delimiter.addr, align 1
  %conv10 = sext i8 %tmp15 to i32
  %cmp11 = icmp eq i32 %conv, %conv10
  br i1 %cmp11, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end9
  br label %do.end

if.end14:                                         ; preds = %if.end9
  %tmp16 = load i8, i8* %delimiter.addr, align 1
  %conv15 = sext i8 %tmp16 to i32
  store i32 %conv15, i32* %c, align 4
  br label %if.end16

if.end16:                                         ; preds = %do.body.if.end16_crit_edge, %if.end14
  %tmp17 = load i8*, i8** %p, align 8
  %tmp18 = load i8*, i8** %end, align 8
  %cmp17 = icmp eq i8* %tmp17, %tmp18
  br i1 %cmp17, label %if.then19, label %if.end16.if.end27_crit_edge

if.end16.if.end27_crit_edge:                      ; preds = %if.end16
  br label %if.end27

if.then19:                                        ; preds = %if.end16
  %tmp19 = load %struct.linebuffer*, %struct.linebuffer** %linebuffer.addr, align 8
  %size20 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %tmp19, i32 0, i32 0
  %tmp20 = load i64, i64* %size20, align 8
  store i64 %tmp20, i64* %oldsize, align 8
  %tmp21 = load i8*, i8** %buffer, align 8
  %tmp22 = load %struct.linebuffer*, %struct.linebuffer** %linebuffer.addr, align 8
  %size21 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %tmp22, i32 0, i32 0
  %call22 = call i8* @x2realloc(i8* %tmp21, i64* %size21)
  store i8* %call22, i8** %buffer, align 8
  %tmp23 = load i8*, i8** %buffer, align 8
  %tmp24 = load i64, i64* %oldsize, align 8
  %add.ptr23 = getelementptr inbounds i8, i8* %tmp23, i64 %tmp24
  store i8* %add.ptr23, i8** %p, align 8
  %tmp25 = load i8*, i8** %buffer, align 8
  %tmp26 = load %struct.linebuffer*, %struct.linebuffer** %linebuffer.addr, align 8
  %buffer24 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %tmp26, i32 0, i32 2
  store i8* %tmp25, i8** %buffer24, align 8
  %tmp27 = load i8*, i8** %buffer, align 8
  %tmp28 = load %struct.linebuffer*, %struct.linebuffer** %linebuffer.addr, align 8
  %size25 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %tmp28, i32 0, i32 0
  %tmp29 = load i64, i64* %size25, align 8
  %add.ptr26 = getelementptr inbounds i8, i8* %tmp27, i64 %tmp29
  store i8* %add.ptr26, i8** %end, align 8
  br label %if.end27

if.end27:                                         ; preds = %if.end16.if.end27_crit_edge, %if.then19
  %tmp30 = load i32, i32* %c, align 4
  %conv28 = trunc i32 %tmp30 to i8
  %tmp31 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %tmp31, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  store i8 %conv28, i8* %tmp31, align 1
  br label %do.cond

do.cond:                                          ; preds = %if.end27
  %tmp32 = load i32, i32* %c, align 4
  %tmp33 = load i8, i8* %delimiter.addr, align 1
  %conv29 = sext i8 %tmp33 to i32
  %cmp30 = icmp ne i32 %tmp32, %conv29
  br i1 %cmp30, label %do.cond.do.body_crit_edge, label %do.end.loopexit

do.cond.do.body_crit_edge:                        ; preds = %do.cond
  br label %do.body

do.end.loopexit:                                  ; preds = %do.cond
  br label %do.end

do.end:                                           ; preds = %do.end.loopexit, %if.then13
  %tmp34 = load i8*, i8** %p, align 8
  %tmp35 = load i8*, i8** %buffer, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %tmp34 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %tmp35 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %tmp36 = load %struct.linebuffer*, %struct.linebuffer** %linebuffer.addr, align 8
  %length = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %tmp36, i32 0, i32 1
  store i64 %sub.ptr.sub, i64* %length, align 8
  %tmp37 = load %struct.linebuffer*, %struct.linebuffer** %linebuffer.addr, align 8
  store %struct.linebuffer* %tmp37, %struct.linebuffer** %retval
  br label %return

return:                                           ; preds = %do.end, %if.then8, %if.then
  %tmp38 = load %struct.linebuffer*, %struct.linebuffer** %retval
  ret %struct.linebuffer* %tmp38
}

declare i32 @getc_unlocked(%struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define void @freebuffer(%struct.linebuffer* %linebuffer) #0 {
entry:
  %linebuffer.addr = alloca %struct.linebuffer*, align 8
  %"reg2mem alloca point" = bitcast i32 0 to i32
  store %struct.linebuffer* %linebuffer, %struct.linebuffer** %linebuffer.addr, align 8
  %tmp = load %struct.linebuffer*, %struct.linebuffer** %linebuffer.addr, align 8
  %buffer = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %tmp, i32 0, i32 2
  %tmp1 = load i8*, i8** %buffer, align 8
  call void @free(i8* %tmp1) #8
  ret void
}

; Function Attrs: nounwind uwtable
define void @version_etc_va(%struct._IO_FILE* %stream, i8* %command_name, i8* %package, i8* %version, %struct.__va_list_tag* %authors) #0 {
entry:
  %stream.addr = alloca %struct._IO_FILE*, align 8
  %command_name.addr = alloca i8*, align 8
  %package.addr = alloca i8*, align 8
  %version.addr = alloca i8*, align 8
  %authors.addr = alloca %struct.__va_list_tag*, align 8
  %n_authors = alloca i64, align 8
  %tmp_authors = alloca [1 x %struct.__va_list_tag], align 16
  %tmp7.reg2mem = alloca i8**
  %tmp5.reg2mem = alloca i8**
  %gp_offset.reg2mem = alloca i32
  %gp_offset_p.reg2mem = alloca i32*
  %arraydecay1.reg2mem = alloca %struct.__va_list_tag*
  %vaarg.addr.reg2mem = alloca i8**
  %"reg2mem alloca point" = bitcast i32 0 to i32
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8
  store i8* %command_name, i8** %command_name.addr, align 8
  store i8* %package, i8** %package.addr, align 8
  store i8* %version, i8** %version.addr, align 8
  store %struct.__va_list_tag* %authors, %struct.__va_list_tag** %authors.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %tmp_authors, i32 0, i32 0
  %tmp = load %struct.__va_list_tag*, %struct.__va_list_tag** %authors.addr, align 8
  %tmp1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  %tmp2 = bitcast %struct.__va_list_tag* %tmp to i8*
  call void @llvm.va_copy(i8* %tmp1, i8* %tmp2)
  store i64 0, i64* %n_authors, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %arraydecay1 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %tmp_authors, i32 0, i32 0
  store %struct.__va_list_tag* %arraydecay1, %struct.__va_list_tag** %arraydecay1.reg2mem
  %arraydecay1.reload47 = load %struct.__va_list_tag*, %struct.__va_list_tag** %arraydecay1.reg2mem
  %gp_offset_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay1.reload47, i32 0, i32 0
  store i32* %gp_offset_p, i32** %gp_offset_p.reg2mem
  %gp_offset_p.reload45 = load i32*, i32** %gp_offset_p.reg2mem
  %gp_offset = load i32, i32* %gp_offset_p.reload45
  store i32 %gp_offset, i32* %gp_offset.reg2mem
  %gp_offset.reload44 = load i32, i32* %gp_offset.reg2mem
  %fits_in_gp = icmp ule i32 %gp_offset.reload44, 40
  br i1 %fits_in_gp, label %vaarg.in_reg, label %vaarg.in_mem

vaarg.in_reg:                                     ; preds = %while.cond
  %arraydecay1.reload46 = load %struct.__va_list_tag*, %struct.__va_list_tag** %arraydecay1.reg2mem
  %tmp3 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay1.reload46, i32 0, i32 3
  %reg_save_area = load i8*, i8** %tmp3
  %gp_offset.reload43 = load i32, i32* %gp_offset.reg2mem
  %tmp4 = getelementptr i8, i8* %reg_save_area, i32 %gp_offset.reload43
  %tmp5 = bitcast i8* %tmp4 to i8**
  store i8** %tmp5, i8*** %tmp5.reg2mem
  %gp_offset.reload = load i32, i32* %gp_offset.reg2mem
  %tmp6 = add i32 %gp_offset.reload, 8
  %gp_offset_p.reload = load i32*, i32** %gp_offset_p.reg2mem
  store i32 %tmp6, i32* %gp_offset_p.reload
  %tmp5.reload = load i8**, i8*** %tmp5.reg2mem
  store i8** %tmp5.reload, i8*** %vaarg.addr.reg2mem
  br label %vaarg.end

vaarg.in_mem:                                     ; preds = %while.cond
  %arraydecay1.reload = load %struct.__va_list_tag*, %struct.__va_list_tag** %arraydecay1.reg2mem
  %overflow_arg_area_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay1.reload, i32 0, i32 2
  %overflow_arg_area = load i8*, i8** %overflow_arg_area_p
  %tmp7 = bitcast i8* %overflow_arg_area to i8**
  store i8** %tmp7, i8*** %tmp7.reg2mem
  %overflow_arg_area.next = getelementptr i8, i8* %overflow_arg_area, i32 8
  store i8* %overflow_arg_area.next, i8** %overflow_arg_area_p
  %tmp7.reload = load i8**, i8*** %tmp7.reg2mem
  store i8** %tmp7.reload, i8*** %vaarg.addr.reg2mem
  br label %vaarg.end

vaarg.end:                                        ; preds = %vaarg.in_mem, %vaarg.in_reg
  %vaarg.addr.reload = load i8**, i8*** %vaarg.addr.reg2mem
  %tmp8 = load i8*, i8** %vaarg.addr.reload
  %cmp = icmp ne i8* %tmp8, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %vaarg.end
  %tmp9 = load i64, i64* %n_authors, align 8
  %inc = add i64 %tmp9, 1
  store i64 %inc, i64* %n_authors, align 8
  br label %while.cond

while.end:                                        ; preds = %vaarg.end
  %tmp10 = load i8*, i8** %command_name.addr, align 8
  %tobool = icmp ne i8* %tmp10, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %while.end
  %tmp11 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %tmp12 = load i8*, i8** %command_name.addr, align 8
  %tmp13 = load i8*, i8** %package.addr, align 8
  %tmp14 = load i8*, i8** %version.addr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %tmp11, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str50, i32 0, i32 0), i8* %tmp12, i8* %tmp13, i8* %tmp14)
  br label %if.end

if.else:                                          ; preds = %while.end
  %tmp15 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %tmp16 = load i8*, i8** %package.addr, align 8
  %tmp17 = load i8*, i8** %version.addr, align 8
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %tmp15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str151, i32 0, i32 0), i8* %tmp16, i8* %tmp17)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %tmp18 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call3 = call i8* @gettext(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str252, i32 0, i32 0)) #8
  %call4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %tmp18, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i32 0, i32 0), i8* %call3, i32 2008)
  %call5 = call i8* @gettext(i8* getelementptr inbounds ([202 x i8], [202 x i8]* @.str353, i32 0, i32 0)) #8
  %tmp19 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call6 = call i32 @fputs_unlocked(i8* %call5, %struct._IO_FILE* %tmp19)
  %tmp20 = load i64, i64* %n_authors, align 8
  switch i64 %tmp20, label %sw.default [
    i64 0, label %sw.bb
    i64 1, label %sw.bb7
    i64 2, label %sw.bb10
    i64 3, label %sw.bb13
    i64 4, label %sw.bb16
    i64 5, label %sw.bb19
    i64 6, label %sw.bb22
    i64 7, label %sw.bb25
    i64 8, label %sw.bb28
    i64 9, label %sw.bb31
  ]

sw.bb:                                            ; preds = %if.end
  call void @abort() #12
  unreachable

sw.bb7:                                           ; preds = %if.end
  %tmp21 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call8 = call i8* @gettext(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str454, i32 0, i32 0)) #8
  %tmp22 = load %struct.__va_list_tag*, %struct.__va_list_tag** %authors.addr, align 8
  %call9 = call i32 @rpl_vfprintf(%struct._IO_FILE* %tmp21, i8* %call8, %struct.__va_list_tag* %tmp22)
  br label %sw.epilog

sw.bb10:                                          ; preds = %if.end
  %tmp23 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call11 = call i8* @gettext(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str555, i32 0, i32 0)) #8
  %tmp24 = load %struct.__va_list_tag*, %struct.__va_list_tag** %authors.addr, align 8
  %call12 = call i32 @rpl_vfprintf(%struct._IO_FILE* %tmp23, i8* %call11, %struct.__va_list_tag* %tmp24)
  br label %sw.epilog

sw.bb13:                                          ; preds = %if.end
  %tmp25 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call14 = call i8* @gettext(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str656, i32 0, i32 0)) #8
  %tmp26 = load %struct.__va_list_tag*, %struct.__va_list_tag** %authors.addr, align 8
  %call15 = call i32 @rpl_vfprintf(%struct._IO_FILE* %tmp25, i8* %call14, %struct.__va_list_tag* %tmp26)
  br label %sw.epilog

sw.bb16:                                          ; preds = %if.end
  %tmp27 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call17 = call i8* @gettext(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str757, i32 0, i32 0)) #8
  %tmp28 = load %struct.__va_list_tag*, %struct.__va_list_tag** %authors.addr, align 8
  %call18 = call i32 @rpl_vfprintf(%struct._IO_FILE* %tmp27, i8* %call17, %struct.__va_list_tag* %tmp28)
  br label %sw.epilog

sw.bb19:                                          ; preds = %if.end
  %tmp29 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call20 = call i8* @gettext(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str858, i32 0, i32 0)) #8
  %tmp30 = load %struct.__va_list_tag*, %struct.__va_list_tag** %authors.addr, align 8
  %call21 = call i32 @rpl_vfprintf(%struct._IO_FILE* %tmp29, i8* %call20, %struct.__va_list_tag* %tmp30)
  br label %sw.epilog

sw.bb22:                                          ; preds = %if.end
  %tmp31 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call23 = call i8* @gettext(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str959, i32 0, i32 0)) #8
  %tmp32 = load %struct.__va_list_tag*, %struct.__va_list_tag** %authors.addr, align 8
  %call24 = call i32 @rpl_vfprintf(%struct._IO_FILE* %tmp31, i8* %call23, %struct.__va_list_tag* %tmp32)
  br label %sw.epilog

sw.bb25:                                          ; preds = %if.end
  %tmp33 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call26 = call i8* @gettext(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str1060, i32 0, i32 0)) #8
  %tmp34 = load %struct.__va_list_tag*, %struct.__va_list_tag** %authors.addr, align 8
  %call27 = call i32 @rpl_vfprintf(%struct._IO_FILE* %tmp33, i8* %call26, %struct.__va_list_tag* %tmp34)
  br label %sw.epilog

sw.bb28:                                          ; preds = %if.end
  %tmp35 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call29 = call i8* @gettext(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str1161, i32 0, i32 0)) #8
  %tmp36 = load %struct.__va_list_tag*, %struct.__va_list_tag** %authors.addr, align 8
  %call30 = call i32 @rpl_vfprintf(%struct._IO_FILE* %tmp35, i8* %call29, %struct.__va_list_tag* %tmp36)
  br label %sw.epilog

sw.bb31:                                          ; preds = %if.end
  %tmp37 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call32 = call i8* @gettext(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str1262, i32 0, i32 0)) #8
  %tmp38 = load %struct.__va_list_tag*, %struct.__va_list_tag** %authors.addr, align 8
  %call33 = call i32 @rpl_vfprintf(%struct._IO_FILE* %tmp37, i8* %call32, %struct.__va_list_tag* %tmp38)
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  %tmp39 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call34 = call i8* @gettext(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str1363, i32 0, i32 0)) #8
  %tmp40 = load %struct.__va_list_tag*, %struct.__va_list_tag** %authors.addr, align 8
  %call35 = call i32 @rpl_vfprintf(%struct._IO_FILE* %tmp39, i8* %call34, %struct.__va_list_tag* %tmp40)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb31, %sw.bb28, %sw.bb25, %sw.bb22, %sw.bb19, %sw.bb16, %sw.bb13, %sw.bb10, %sw.bb7
  %tmp41 = load %struct.__va_list_tag*, %struct.__va_list_tag** %authors.addr, align 8
  %tmp42 = bitcast %struct.__va_list_tag* %tmp41 to i8*
  call void @llvm.va_end(i8* %tmp42)
  ret void
}

; Function Attrs: nounwind
declare void @llvm.va_copy(i8*, i8*) #8

; Function Attrs: noreturn nounwind
declare void @abort() #4

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #8

; Function Attrs: nounwind uwtable
define void @version_etc(%struct._IO_FILE* %stream, i8* %command_name, i8* %package, i8* %version, ...) #0 {
entry:
  %stream.addr = alloca %struct._IO_FILE*, align 8
  %command_name.addr = alloca i8*, align 8
  %package.addr = alloca i8*, align 8
  %version.addr = alloca i8*, align 8
  %authors = alloca [1 x %struct.__va_list_tag], align 16
  %"reg2mem alloca point" = bitcast i32 0 to i32
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8
  store i8* %command_name, i8** %command_name.addr, align 8
  store i8* %package, i8** %package.addr, align 8
  store i8* %version, i8** %version.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %authors, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %tmp = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %tmp1 = load i8*, i8** %command_name.addr, align 8
  %tmp2 = load i8*, i8** %package.addr, align 8
  %tmp3 = load i8*, i8** %version.addr, align 8
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %authors, i32 0, i32 0
  call void @version_etc_va(%struct._IO_FILE* %tmp, i8* %tmp1, i8* %tmp2, i8* %tmp3, %struct.__va_list_tag* %arraydecay2)
  ret void
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #8

; Function Attrs: nounwind uwtable
define i32 @xmemcoll(i8* %s1, i64 %s1len, i8* %s2, i64 %s2len) #0 {
entry:
  %s1.addr = alloca i8*, align 8
  %s1len.addr = alloca i64, align 8
  %s2.addr = alloca i8*, align 8
  %s2len.addr = alloca i64, align 8
  %diff = alloca i32, align 4
  %collation_errno = alloca i32, align 4
  %"reg2mem alloca point" = bitcast i32 0 to i32
  store i8* %s1, i8** %s1.addr, align 8
  store i64 %s1len, i64* %s1len.addr, align 8
  store i8* %s2, i8** %s2.addr, align 8
  store i64 %s2len, i64* %s2len.addr, align 8
  %tmp = load i8*, i8** %s1.addr, align 8
  %tmp1 = load i64, i64* %s1len.addr, align 8
  %tmp2 = load i8*, i8** %s2.addr, align 8
  %tmp3 = load i64, i64* %s2len.addr, align 8
  %call = call i32 @memcoll(i8* %tmp, i64 %tmp1, i8* %tmp2, i64 %tmp3)
  store i32 %call, i32* %diff, align 4
  %call1 = call i32* @__errno_location() #14
  %tmp4 = load i32, i32* %call1, align 4
  store i32 %tmp4, i32* %collation_errno, align 4
  %tmp5 = load i32, i32* %collation_errno, align 4
  %tobool = icmp ne i32 %tmp5, 0
  br i1 %tobool, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  br label %if.end

if.then:                                          ; preds = %entry
  %tmp6 = load i32, i32* %collation_errno, align 4
  %call2 = call i8* @gettext(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str68, i32 0, i32 0)) #8
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %tmp6, i8* %call2)
  %call3 = call i8* @gettext(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str169, i32 0, i32 0)) #8
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %call3)
  %tmp7 = load volatile i32, i32* @exit_failure, align 4
  %call4 = call i8* @gettext(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str270, i32 0, i32 0)) #8
  %tmp8 = load i8*, i8** %s1.addr, align 8
  %tmp9 = load i64, i64* %s1len.addr, align 8
  %call5 = call i8* @quotearg_n_style_mem(i32 0, i32 6, i8* %tmp8, i64 %tmp9)
  %tmp10 = load i8*, i8** %s2.addr, align 8
  %tmp11 = load i64, i64* %s2len.addr, align 8
  %call6 = call i8* @quotearg_n_style_mem(i32 1, i32 6, i8* %tmp10, i64 %tmp11)
  call void (i32, i32, i8*, ...) @error(i32 %tmp7, i32 0, i8* %call4, i8* %call5, i8* %call6)
  br label %if.end

if.end:                                           ; preds = %entry.if.end_crit_edge, %if.then
  %tmp12 = load i32, i32* %diff, align 4
  ret i32 %tmp12
}

; Function Attrs: nounwind uwtable
define i64 @argmatch(i8* %arg, i8** %arglist, i8* %vallist, i64 %valsize) #0 {
entry:
  %retval = alloca i64, align 8
  %arg.addr = alloca i8*, align 8
  %arglist.addr = alloca i8**, align 8
  %vallist.addr = alloca i8*, align 8
  %valsize.addr = alloca i64, align 8
  %i = alloca i64, align 8
  %arglen = alloca i64, align 8
  %matchind = alloca i64, align 8
  %ambiguous = alloca i8, align 1
  %"reg2mem alloca point" = bitcast i32 0 to i32
  store i8* %arg, i8** %arg.addr, align 8
  store i8** %arglist, i8*** %arglist.addr, align 8
  store i8* %vallist, i8** %vallist.addr, align 8
  store i64 %valsize, i64* %valsize.addr, align 8
  store i64 -1, i64* %matchind, align 8
  store i8 0, i8* %ambiguous, align 1
  %tmp = load i8*, i8** %arg.addr, align 8
  %call = call i64 @strlen(i8* %tmp) #13
  store i64 %call, i64* %arglen, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %tmp1 = load i64, i64* %i, align 8
  %tmp2 = load i8**, i8*** %arglist.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %tmp2, i64 %tmp1
  %tmp3 = load i8*, i8** %arrayidx, align 8
  %tobool = icmp ne i8* %tmp3, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %tmp4 = load i64, i64* %i, align 8
  %tmp5 = load i8**, i8*** %arglist.addr, align 8
  %arrayidx1 = getelementptr inbounds i8*, i8** %tmp5, i64 %tmp4
  %tmp6 = load i8*, i8** %arrayidx1, align 8
  %tmp7 = load i8*, i8** %arg.addr, align 8
  %tmp8 = load i64, i64* %arglen, align 8
  %call2 = call i32 @strncmp(i8* %tmp6, i8* %tmp7, i64 %tmp8) #13
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %for.body.if.end18_crit_edge, label %if.then

for.body.if.end18_crit_edge:                      ; preds = %for.body
  br label %if.end18

if.then:                                          ; preds = %for.body
  %tmp9 = load i64, i64* %i, align 8
  %tmp10 = load i8**, i8*** %arglist.addr, align 8
  %arrayidx4 = getelementptr inbounds i8*, i8** %tmp10, i64 %tmp9
  %tmp11 = load i8*, i8** %arrayidx4, align 8
  %call5 = call i64 @strlen(i8* %tmp11) #13
  %tmp12 = load i64, i64* %arglen, align 8
  %cmp = icmp eq i64 %call5, %tmp12
  br i1 %cmp, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.then
  %tmp13 = load i64, i64* %i, align 8
  store i64 %tmp13, i64* %retval
  br label %return

if.else:                                          ; preds = %if.then
  %tmp14 = load i64, i64* %matchind, align 8
  %cmp7 = icmp eq i64 %tmp14, -1
  br i1 %cmp7, label %if.then8, label %if.else9

if.then8:                                         ; preds = %if.else
  %tmp15 = load i64, i64* %i, align 8
  store i64 %tmp15, i64* %matchind, align 8
  br label %if.end16

if.else9:                                         ; preds = %if.else
  %tmp16 = load i8*, i8** %vallist.addr, align 8
  %cmp10 = icmp eq i8* %tmp16, null
  br i1 %cmp10, label %if.else9.if.then15_crit_edge, label %lor.lhs.false

if.else9.if.then15_crit_edge:                     ; preds = %if.else9
  br label %if.then15

lor.lhs.false:                                    ; preds = %if.else9
  %tmp17 = load i8*, i8** %vallist.addr, align 8
  %tmp18 = load i64, i64* %valsize.addr, align 8
  %tmp19 = load i64, i64* %matchind, align 8
  %mul = mul i64 %tmp18, %tmp19
  %add.ptr = getelementptr inbounds i8, i8* %tmp17, i64 %mul
  %tmp20 = load i8*, i8** %vallist.addr, align 8
  %tmp21 = load i64, i64* %valsize.addr, align 8
  %tmp22 = load i64, i64* %i, align 8
  %mul11 = mul i64 %tmp21, %tmp22
  %add.ptr12 = getelementptr inbounds i8, i8* %tmp20, i64 %mul11
  %tmp23 = load i64, i64* %valsize.addr, align 8
  %call13 = call i32 @memcmp(i8* %add.ptr, i8* %add.ptr12, i64 %tmp23) #13
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %lor.lhs.false.if.then15_crit_edge, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  br label %if.end

lor.lhs.false.if.then15_crit_edge:                ; preds = %lor.lhs.false
  br label %if.then15

if.then15:                                        ; preds = %lor.lhs.false.if.then15_crit_edge, %if.else9.if.then15_crit_edge
  store i8 1, i8* %ambiguous, align 1
  br label %if.end

if.end:                                           ; preds = %lor.lhs.false.if.end_crit_edge, %if.then15
  br label %if.end16

if.end16:                                         ; preds = %if.end, %if.then8
  br label %if.end17

if.end17:                                         ; preds = %if.end16
  br label %if.end18

if.end18:                                         ; preds = %for.body.if.end18_crit_edge, %if.end17
  br label %for.inc

for.inc:                                          ; preds = %if.end18
  %tmp24 = load i64, i64* %i, align 8
  %inc = add i64 %tmp24, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %tmp25 = load i8, i8* %ambiguous, align 1
  %tobool19 = trunc i8 %tmp25 to i1
  br i1 %tobool19, label %if.then20, label %if.else21

if.then20:                                        ; preds = %for.end
  store i64 -2, i64* %retval
  br label %return

if.else21:                                        ; preds = %for.end
  %tmp26 = load i64, i64* %matchind, align 8
  store i64 %tmp26, i64* %retval
  br label %return

return:                                           ; preds = %if.else21, %if.then20, %if.then6
  %tmp27 = load i64, i64* %retval
  ret i64 %tmp27
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #5

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #5

; Function Attrs: nounwind uwtable
define void @argmatch_invalid(i8* %context, i8* %value, i64 %problem) #0 {
entry:
  %context.addr = alloca i8*, align 8
  %value.addr = alloca i8*, align 8
  %problem.addr = alloca i64, align 8
  %format = alloca i8*, align 8
  %call1.reg2mem = alloca i8*
  %call.reg2mem = alloca i8*
  %cond.reg2mem = alloca i8*
  %"reg2mem alloca point" = bitcast i32 0 to i32
  store i8* %context, i8** %context.addr, align 8
  store i8* %value, i8** %value.addr, align 8
  store i64 %problem, i64* %problem.addr, align 8
  %tmp = load i64, i64* %problem.addr, align 8
  %cmp = icmp eq i64 %tmp, -1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %call = call i8* @gettext(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str75, i32 0, i32 0)) #8
  store i8* %call, i8** %call.reg2mem
  %call.reload = load i8*, i8** %call.reg2mem
  store i8* %call.reload, i8** %cond.reg2mem
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call1 = call i8* @gettext(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str176, i32 0, i32 0)) #8
  store i8* %call1, i8** %call1.reg2mem
  %call1.reload = load i8*, i8** %call1.reg2mem
  store i8* %call1.reload, i8** %cond.reg2mem
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond.reload = load i8*, i8** %cond.reg2mem
  store i8* %cond.reload, i8** %format, align 8
  %tmp1 = load i8*, i8** %format, align 8
  %tmp2 = load i8*, i8** %value.addr, align 8
  %call2 = call i8* @quotearg_n_style(i32 0, i32 6, i8* %tmp2)
  %tmp3 = load i8*, i8** %context.addr, align 8
  %call3 = call i8* @quote_n(i32 1, i8* %tmp3)
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %tmp1, i8* %call2, i8* %call3)
  ret void
}

; Function Attrs: nounwind uwtable
define void @argmatch_valid(i8** %arglist, i8* %vallist, i64 %valsize) #0 {
entry:
  %arglist.addr = alloca i8**, align 8
  %vallist.addr = alloca i8*, align 8
  %valsize.addr = alloca i64, align 8
  %i = alloca i64, align 8
  %last_val = alloca i8*, align 8
  %"reg2mem alloca point" = bitcast i32 0 to i32
  store i8** %arglist, i8*** %arglist.addr, align 8
  store i8* %vallist, i8** %vallist.addr, align 8
  store i64 %valsize, i64* %valsize.addr, align 8
  store i8* null, i8** %last_val, align 8
  %tmp = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call = call i8* @gettext(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str277, i32 0, i32 0)) #8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %tmp, i8* %call)
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %tmp1 = load i64, i64* %i, align 8
  %tmp2 = load i8**, i8*** %arglist.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %tmp2, i64 %tmp1
  %tmp3 = load i8*, i8** %arrayidx, align 8
  %tobool = icmp ne i8* %tmp3, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %tmp4 = load i64, i64* %i, align 8
  %cmp = icmp eq i64 %tmp4, 0
  br i1 %cmp, label %for.body.if.then_crit_edge, label %lor.lhs.false

for.body.if.then_crit_edge:                       ; preds = %for.body
  br label %if.then

lor.lhs.false:                                    ; preds = %for.body
  %tmp5 = load i8*, i8** %last_val, align 8
  %tmp6 = load i8*, i8** %vallist.addr, align 8
  %tmp7 = load i64, i64* %valsize.addr, align 8
  %tmp8 = load i64, i64* %i, align 8
  %mul = mul i64 %tmp7, %tmp8
  %add.ptr = getelementptr inbounds i8, i8* %tmp6, i64 %mul
  %tmp9 = load i64, i64* %valsize.addr, align 8
  %call2 = call i32 @memcmp(i8* %tmp5, i8* %add.ptr, i64 %tmp9) #13
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %lor.lhs.false.if.then_crit_edge, label %if.else

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %for.body.if.then_crit_edge
  %tmp10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %tmp11 = load i64, i64* %i, align 8
  %tmp12 = load i8**, i8*** %arglist.addr, align 8
  %arrayidx4 = getelementptr inbounds i8*, i8** %tmp12, i64 %tmp11
  %tmp13 = load i8*, i8** %arrayidx4, align 8
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %tmp10, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str378, i32 0, i32 0), i8* %tmp13)
  %tmp14 = load i8*, i8** %vallist.addr, align 8
  %tmp15 = load i64, i64* %valsize.addr, align 8
  %tmp16 = load i64, i64* %i, align 8
  %mul6 = mul i64 %tmp15, %tmp16
  %add.ptr7 = getelementptr inbounds i8, i8* %tmp14, i64 %mul6
  store i8* %add.ptr7, i8** %last_val, align 8
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  %tmp17 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %tmp18 = load i64, i64* %i, align 8
  %tmp19 = load i8**, i8*** %arglist.addr, align 8
  %arrayidx8 = getelementptr inbounds i8*, i8** %tmp19, i64 %tmp18
  %tmp20 = load i8*, i8** %arrayidx8, align 8
  %call9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %tmp17, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str479, i32 0, i32 0), i8* %tmp20)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %tmp21 = load i64, i64* %i, align 8
  %inc = add i64 %tmp21, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %tmp22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call10 = call i32 @putc_unlocked(i32 10, %struct._IO_FILE* %tmp22)
  ret void
}

declare i32 @putc_unlocked(i32, %struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define i64 @__xargmatch_internal(i8* %context, i8* %arg, i8** %arglist, i8* %vallist, i64 %valsize, void ()* %exit_fn) #0 {
entry:
  %retval = alloca i64, align 8
  %context.addr = alloca i8*, align 8
  %arg.addr = alloca i8*, align 8
  %arglist.addr = alloca i8**, align 8
  %vallist.addr = alloca i8*, align 8
  %valsize.addr = alloca i64, align 8
  %exit_fn.addr = alloca void ()*, align 8
  %res = alloca i64, align 8
  %"reg2mem alloca point" = bitcast i32 0 to i32
  store i8* %context, i8** %context.addr, align 8
  store i8* %arg, i8** %arg.addr, align 8
  store i8** %arglist, i8*** %arglist.addr, align 8
  store i8* %vallist, i8** %vallist.addr, align 8
  store i64 %valsize, i64* %valsize.addr, align 8
  store void ()* %exit_fn, void ()** %exit_fn.addr, align 8
  %tmp = load i8*, i8** %arg.addr, align 8
  %tmp1 = load i8**, i8*** %arglist.addr, align 8
  %tmp2 = load i8*, i8** %vallist.addr, align 8
  %tmp3 = load i64, i64* %valsize.addr, align 8
  %call = call i64 @argmatch(i8* %tmp, i8** %tmp1, i8* %tmp2, i64 %tmp3)
  store i64 %call, i64* %res, align 8
  %tmp4 = load i64, i64* %res, align 8
  %cmp = icmp sge i64 %tmp4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %tmp5 = load i64, i64* %res, align 8
  store i64 %tmp5, i64* %retval
  br label %return

if.end:                                           ; preds = %entry
  %tmp6 = load i8*, i8** %context.addr, align 8
  %tmp7 = load i8*, i8** %arg.addr, align 8
  %tmp8 = load i64, i64* %res, align 8
  call void @argmatch_invalid(i8* %tmp6, i8* %tmp7, i64 %tmp8)
  %tmp9 = load i8**, i8*** %arglist.addr, align 8
  %tmp10 = load i8*, i8** %vallist.addr, align 8
  %tmp11 = load i64, i64* %valsize.addr, align 8
  call void @argmatch_valid(i8** %tmp9, i8* %tmp10, i64 %tmp11)
  %tmp12 = load void ()*, void ()** %exit_fn.addr, align 8
  call void %tmp12()
  store i64 -1, i64* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %tmp13 = load i64, i64* %retval
  ret i64 %tmp13
}

; Function Attrs: nounwind uwtable
define i8* @argmatch_to_argument(i8* %value, i8** %arglist, i8* %vallist, i64 %valsize) #0 {
entry:
  %retval = alloca i8*, align 8
  %value.addr = alloca i8*, align 8
  %arglist.addr = alloca i8**, align 8
  %vallist.addr = alloca i8*, align 8
  %valsize.addr = alloca i64, align 8
  %i = alloca i64, align 8
  %"reg2mem alloca point" = bitcast i32 0 to i32
  store i8* %value, i8** %value.addr, align 8
  store i8** %arglist, i8*** %arglist.addr, align 8
  store i8* %vallist, i8** %vallist.addr, align 8
  store i64 %valsize, i64* %valsize.addr, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %tmp = load i64, i64* %i, align 8
  %tmp1 = load i8**, i8*** %arglist.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %tmp1, i64 %tmp
  %tmp2 = load i8*, i8** %arrayidx, align 8
  %tobool = icmp ne i8* %tmp2, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %tmp3 = load i8*, i8** %value.addr, align 8
  %tmp4 = load i8*, i8** %vallist.addr, align 8
  %tmp5 = load i64, i64* %valsize.addr, align 8
  %tmp6 = load i64, i64* %i, align 8
  %mul = mul i64 %tmp5, %tmp6
  %add.ptr = getelementptr inbounds i8, i8* %tmp4, i64 %mul
  %tmp7 = load i64, i64* %valsize.addr, align 8
  %call = call i32 @memcmp(i8* %tmp3, i8* %add.ptr, i64 %tmp7) #13
  %tobool1 = icmp ne i32 %call, 0
  br i1 %tobool1, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  %tmp8 = load i64, i64* %i, align 8
  %tmp9 = load i8**, i8*** %arglist.addr, align 8
  %arrayidx2 = getelementptr inbounds i8*, i8** %tmp9, i64 %tmp8
  %tmp10 = load i8*, i8** %arrayidx2, align 8
  store i8* %tmp10, i8** %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %tmp11 = load i64, i64* %i, align 8
  %inc = add i64 %tmp11, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i8* null, i8** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %tmp12 = load i8*, i8** %retval
  ret i8* %tmp12
}

; Function Attrs: nounwind uwtable
define internal void @__argmatch_die() #0 {
entry:
  %"reg2mem alloca point" = bitcast i32 0 to i32
  call void (i32, ...) bitcast (void (i32)* @usage to void (i32, ...)*)(i32 1)
  ret void
}

; Function Attrs: nounwind uwtable
define void @close_stdout_set_file_name(i8* %file) #0 {
entry:
  %file.addr = alloca i8*, align 8
  %"reg2mem alloca point" = bitcast i32 0 to i32
  store i8* %file, i8** %file.addr, align 8
  %tmp = load i8*, i8** %file.addr, align 8
  store i8* %tmp, i8** @file_name, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @close_stdout() #0 {
entry:
  %write_error = alloca i8*, align 8
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %tmp = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call = call i32 @close_stream(%struct._IO_FILE* %tmp)
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end6

if.then:                                          ; preds = %entry
  %call1 = call i8* @gettext(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str82, i32 0, i32 0)) #8
  store i8* %call1, i8** %write_error, align 8
  %tmp1 = load i8*, i8** @file_name, align 8
  %tobool = icmp ne i8* %tmp1, null
  br i1 %tobool, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.then
  %call3 = call i32* @__errno_location() #14
  %tmp2 = load i32, i32* %call3, align 4
  %tmp3 = load i8*, i8** @file_name, align 8
  %call4 = call i8* @quotearg_colon(i8* %tmp3)
  %tmp4 = load i8*, i8** %write_error, align 8
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %tmp2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str183, i32 0, i32 0), i8* %call4, i8* %tmp4)
  br label %if.end

if.else:                                          ; preds = %if.then
  %call5 = call i32* @__errno_location() #14
  %tmp5 = load i32, i32* %call5, align 4
  %tmp6 = load i8*, i8** %write_error, align 8
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %tmp5, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str284, i32 0, i32 0), i8* %tmp6)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then2
  %tmp7 = load volatile i32, i32* @exit_failure, align 4
  call void @_exit(i32 %tmp7) #15
  unreachable

if.end6:                                          ; preds = %entry
  %tmp8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call7 = call i32 @close_stream(%struct._IO_FILE* %tmp8)
  %cmp8 = icmp ne i32 %call7, 0
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end6
  %tmp9 = load volatile i32, i32* @exit_failure, align 4
  call void @_exit(i32 %tmp9) #15
  unreachable

if.end10:                                         ; preds = %if.end6
  ret void
}

; Function Attrs: noreturn
declare void @_exit(i32) #9

; Function Attrs: nounwind uwtable
define zeroext i1 @hard_locale(i32 %category) #0 {
entry:
  %category.addr = alloca i32, align 4
  %hard = alloca i8, align 1
  %p = alloca i8*, align 8
  %"reg2mem alloca point" = bitcast i32 0 to i32
  store i32 %category, i32* %category.addr, align 4
  store i8 1, i8* %hard, align 1
  %tmp = load i32, i32* %category.addr, align 4
  %call = call i8* @setlocale(i32 %tmp, i8* null) #8
  store i8* %call, i8** %p, align 8
  %tmp1 = load i8*, i8** %p, align 8
  %tobool = icmp ne i8* %tmp1, null
  br i1 %tobool, label %if.then, label %entry.if.end5_crit_edge

entry.if.end5_crit_edge:                          ; preds = %entry
  br label %if.end5

if.then:                                          ; preds = %entry
  %tmp2 = load i8*, i8** %p, align 8
  %call1 = call i32 @strcmp(i8* %tmp2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str89, i32 0, i32 0)) #13
  %cmp = icmp eq i32 %call1, 0
  br i1 %cmp, label %if.then.if.then4_crit_edge, label %lor.lhs.false

if.then.if.then4_crit_edge:                       ; preds = %if.then
  br label %if.then4

lor.lhs.false:                                    ; preds = %if.then
  %tmp3 = load i8*, i8** %p, align 8
  %call2 = call i32 @strcmp(i8* %tmp3, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str190, i32 0, i32 0)) #13
  %cmp3 = icmp eq i32 %call2, 0
  br i1 %cmp3, label %lor.lhs.false.if.then4_crit_edge, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  br label %if.end

lor.lhs.false.if.then4_crit_edge:                 ; preds = %lor.lhs.false
  br label %if.then4

if.then4:                                         ; preds = %lor.lhs.false.if.then4_crit_edge, %if.then.if.then4_crit_edge
  store i8 0, i8* %hard, align 1
  br label %if.end

if.end:                                           ; preds = %lor.lhs.false.if.end_crit_edge, %if.then4
  br label %if.end5

if.end5:                                          ; preds = %entry.if.end5_crit_edge, %if.end
  %tmp4 = load i8, i8* %hard, align 1
  %tobool6 = trunc i8 %tmp4 to i1
  ret i1 %tobool6
}

; Function Attrs: nounwind uwtable
define i32 @memcasecmp(i8* %vs1, i8* %vs2, i64 %n) #0 {
entry:
  %retval = alloca i32, align 4
  %vs1.addr = alloca i8*, align 8
  %vs2.addr = alloca i8*, align 8
  %n.addr = alloca i64, align 8
  %i = alloca i64, align 8
  %s1 = alloca i8*, align 8
  %s2 = alloca i8*, align 8
  %u1 = alloca i8, align 1
  %u2 = alloca i8, align 1
  %U1 = alloca i32, align 4
  %U2 = alloca i32, align 4
  %diff = alloca i32, align 4
  %"reg2mem alloca point" = bitcast i32 0 to i32
  store i8* %vs1, i8** %vs1.addr, align 8
  store i8* %vs2, i8** %vs2.addr, align 8
  store i64 %n, i64* %n.addr, align 8
  %tmp = load i8*, i8** %vs1.addr, align 8
  store i8* %tmp, i8** %s1, align 8
  %tmp1 = load i8*, i8** %vs2.addr, align 8
  store i8* %tmp1, i8** %s2, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %tmp2 = load i64, i64* %i, align 8
  %tmp3 = load i64, i64* %n.addr, align 8
  %cmp = icmp ult i64 %tmp2, %tmp3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %tmp4 = load i64, i64* %i, align 8
  %tmp5 = load i8*, i8** %s1, align 8
  %arrayidx = getelementptr inbounds i8, i8* %tmp5, i64 %tmp4
  %tmp6 = load i8, i8* %arrayidx, align 1
  store i8 %tmp6, i8* %u1, align 1
  %tmp7 = load i64, i64* %i, align 8
  %tmp8 = load i8*, i8** %s2, align 8
  %arrayidx1 = getelementptr inbounds i8, i8* %tmp8, i64 %tmp7
  %tmp9 = load i8, i8* %arrayidx1, align 1
  store i8 %tmp9, i8* %u2, align 1
  %tmp10 = load i8, i8* %u1, align 1
  %conv = zext i8 %tmp10 to i32
  %call = call i32 @toupper(i32 %conv) #8
  store i32 %call, i32* %U1, align 4
  %tmp11 = load i8, i8* %u2, align 1
  %conv2 = zext i8 %tmp11 to i32
  %call3 = call i32 @toupper(i32 %conv2) #8
  store i32 %call3, i32* %U2, align 4
  %tmp12 = load i32, i32* %U1, align 4
  %tmp13 = load i32, i32* %U2, align 4
  %sub = sub nsw i32 %tmp12, %tmp13
  store i32 %sub, i32* %diff, align 4
  %tmp14 = load i32, i32* %diff, align 4
  %tobool = icmp ne i32 %tmp14, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %tmp15 = load i32, i32* %diff, align 4
  store i32 %tmp15, i32* %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %tmp16 = load i64, i64* %i, align 8
  %inc = add i64 %tmp16, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %tmp17 = load i32, i32* %retval
  ret i32 %tmp17
}

; Function Attrs: nounwind
declare i32 @toupper(i32) #2

; Function Attrs: nounwind uwtable
define i32 @memcoll(i8* %s1, i64 %s1len, i8* %s2, i64 %s2len) #0 {
entry:
  %s1.addr = alloca i8*, align 8
  %s1len.addr = alloca i64, align 8
  %s2.addr = alloca i8*, align 8
  %s2len.addr = alloca i64, align 8
  %diff = alloca i32, align 4
  %n1 = alloca i8, align 1
  %n2 = alloca i8, align 1
  %size1 = alloca i64, align 8
  %size2 = alloca i64, align 8
  %tobool10.reg2mem = alloca i1
  %tmp18.reg2mem = alloca i1
  %"reg2mem alloca point" = bitcast i32 0 to i32
  store i8* %s1, i8** %s1.addr, align 8
  store i64 %s1len, i64* %s1len.addr, align 8
  store i8* %s2, i8** %s2.addr, align 8
  store i64 %s2len, i64* %s2len.addr, align 8
  %tmp = load i64, i64* %s1len.addr, align 8
  %tmp1 = load i64, i64* %s2len.addr, align 8
  %cmp = icmp eq i64 %tmp, %tmp1
  br i1 %cmp, label %land.lhs.true, label %entry.if.else_crit_edge

entry.if.else_crit_edge:                          ; preds = %entry
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %tmp2 = load i8*, i8** %s1.addr, align 8
  %tmp3 = load i8*, i8** %s2.addr, align 8
  %tmp4 = load i64, i64* %s1len.addr, align 8
  %call = call i32 @memcmp(i8* %tmp2, i8* %tmp3, i64 %tmp4) #13
  %cmp1 = icmp eq i32 %call, 0
  br i1 %cmp1, label %if.then, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  br label %if.else

if.then:                                          ; preds = %land.lhs.true
  %call2 = call i32* @__errno_location() #14
  store i32 0, i32* %call2, align 4
  store i32 0, i32* %diff, align 4
  br label %if.end29

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  %tmp5 = load i64, i64* %s1len.addr, align 8
  %tmp6 = load i8*, i8** %s1.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %tmp6, i64 %tmp5
  %tmp7 = load i8, i8* %arrayidx, align 1
  store i8 %tmp7, i8* %n1, align 1
  %tmp8 = load i64, i64* %s2len.addr, align 8
  %tmp9 = load i8*, i8** %s2.addr, align 8
  %arrayidx3 = getelementptr inbounds i8, i8* %tmp9, i64 %tmp8
  %tmp10 = load i8, i8* %arrayidx3, align 1
  store i8 %tmp10, i8* %n2, align 1
  %tmp11 = load i64, i64* %s1len.addr, align 8
  %inc = add i64 %tmp11, 1
  store i64 %inc, i64* %s1len.addr, align 8
  %tmp12 = load i8*, i8** %s1.addr, align 8
  %arrayidx4 = getelementptr inbounds i8, i8* %tmp12, i64 %tmp11
  store i8 0, i8* %arrayidx4, align 1
  %tmp13 = load i64, i64* %s2len.addr, align 8
  %inc5 = add i64 %tmp13, 1
  store i64 %inc5, i64* %s2len.addr, align 8
  %tmp14 = load i8*, i8** %s2.addr, align 8
  %arrayidx6 = getelementptr inbounds i8, i8* %tmp14, i64 %tmp13
  store i8 0, i8* %arrayidx6, align 1
  br label %while.cond

while.cond:                                       ; preds = %if.end24, %if.else
  %call7 = call i32* @__errno_location() #14
  store i32 0, i32* %call7, align 4
  %tmp15 = load i8*, i8** %s1.addr, align 8
  %tmp16 = load i8*, i8** %s2.addr, align 8
  %call8 = call i32 @strcoll(i8* %tmp15, i8* %tmp16) #13
  store i32 %call8, i32* %diff, align 4
  %tobool = icmp ne i32 %call8, 0
  br i1 %tobool, label %while.cond.lor.end_crit_edge, label %lor.rhs

while.cond.lor.end_crit_edge:                     ; preds = %while.cond
  store i1 true, i1* %tmp18.reg2mem
  br label %lor.end

lor.rhs:                                          ; preds = %while.cond
  %call9 = call i32* @__errno_location() #14
  %tmp17 = load i32, i32* %call9, align 4
  %tobool10 = icmp ne i32 %tmp17, 0
  store i1 %tobool10, i1* %tobool10.reg2mem
  %tobool10.reload = load i1, i1* %tobool10.reg2mem
  store i1 %tobool10.reload, i1* %tmp18.reg2mem
  br label %lor.end

lor.end:                                          ; preds = %while.cond.lor.end_crit_edge, %lor.rhs
  %tmp18.reload = load i1, i1* %tmp18.reg2mem
  %lnot = xor i1 %tmp18.reload, true
  br i1 %lnot, label %while.body, label %while.end.loopexit

while.body:                                       ; preds = %lor.end
  %tmp19 = load i8*, i8** %s1.addr, align 8
  %call11 = call i64 @strlen(i8* %tmp19) #13
  %add = add i64 %call11, 1
  store i64 %add, i64* %size1, align 8
  %tmp20 = load i8*, i8** %s2.addr, align 8
  %call12 = call i64 @strlen(i8* %tmp20) #13
  %add13 = add i64 %call12, 1
  store i64 %add13, i64* %size2, align 8
  %tmp21 = load i64, i64* %size1, align 8
  %tmp22 = load i8*, i8** %s1.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %tmp22, i64 %tmp21
  store i8* %add.ptr, i8** %s1.addr, align 8
  %tmp23 = load i64, i64* %size2, align 8
  %tmp24 = load i8*, i8** %s2.addr, align 8
  %add.ptr14 = getelementptr inbounds i8, i8* %tmp24, i64 %tmp23
  store i8* %add.ptr14, i8** %s2.addr, align 8
  %tmp25 = load i64, i64* %size1, align 8
  %tmp26 = load i64, i64* %s1len.addr, align 8
  %sub = sub i64 %tmp26, %tmp25
  store i64 %sub, i64* %s1len.addr, align 8
  %tmp27 = load i64, i64* %size2, align 8
  %tmp28 = load i64, i64* %s2len.addr, align 8
  %sub15 = sub i64 %tmp28, %tmp27
  store i64 %sub15, i64* %s2len.addr, align 8
  %tmp29 = load i64, i64* %s1len.addr, align 8
  %cmp16 = icmp eq i64 %tmp29, 0
  br i1 %cmp16, label %if.then17, label %if.else20

if.then17:                                        ; preds = %while.body
  %tmp30 = load i64, i64* %s2len.addr, align 8
  %cmp18 = icmp ne i64 %tmp30, 0
  br i1 %cmp18, label %if.then19, label %if.then17.if.end_crit_edge

if.then17.if.end_crit_edge:                       ; preds = %if.then17
  br label %if.end

if.then19:                                        ; preds = %if.then17
  store i32 -1, i32* %diff, align 4
  br label %if.end

if.end:                                           ; preds = %if.then17.if.end_crit_edge, %if.then19
  br label %while.end

if.else20:                                        ; preds = %while.body
  %tmp31 = load i64, i64* %s2len.addr, align 8
  %cmp21 = icmp eq i64 %tmp31, 0
  br i1 %cmp21, label %if.then22, label %if.end23

if.then22:                                        ; preds = %if.else20
  store i32 1, i32* %diff, align 4
  br label %while.end

if.end23:                                         ; preds = %if.else20
  br label %if.end24

if.end24:                                         ; preds = %if.end23
  br label %while.cond

while.end.loopexit:                               ; preds = %lor.end
  br label %while.end

while.end:                                        ; preds = %while.end.loopexit, %if.then22, %if.end
  %tmp32 = load i8, i8* %n1, align 1
  %tmp33 = load i64, i64* %s1len.addr, align 8
  %sub25 = sub i64 %tmp33, 1
  %tmp34 = load i8*, i8** %s1.addr, align 8
  %arrayidx26 = getelementptr inbounds i8, i8* %tmp34, i64 %sub25
  store i8 %tmp32, i8* %arrayidx26, align 1
  %tmp35 = load i8, i8* %n2, align 1
  %tmp36 = load i64, i64* %s2len.addr, align 8
  %sub27 = sub i64 %tmp36, 1
  %tmp37 = load i8*, i8** %s2.addr, align 8
  %arrayidx28 = getelementptr inbounds i8, i8* %tmp37, i64 %sub27
  store i8 %tmp35, i8* %arrayidx28, align 1
  br label %if.end29

if.end29:                                         ; preds = %while.end, %if.then
  %tmp38 = load i32, i32* %diff, align 4
  ret i32 %tmp38
}

; Function Attrs: nounwind readonly
declare i32 @strcoll(i8*, i8*) #5

; Function Attrs: nounwind uwtable
define i32 @posix2_version() #0 {
entry:
  %v = alloca i64, align 8
  %s = alloca i8*, align 8
  %e = alloca i8*, align 8
  %i = alloca i64, align 8
  %cond.reg2mem = alloca i64
  %tmp9.reg2mem = alloca i64
  %cond12.reg2mem = alloca i64
  %cond.reg2mem10 = alloca i64
  %"reg2mem alloca point" = bitcast i32 0 to i32
  store i64 200809, i64* %v, align 8
  %call = call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str97, i32 0, i32 0)) #8
  store i8* %call, i8** %s, align 8
  %tmp = load i8*, i8** %s, align 8
  %tobool = icmp ne i8* %tmp, null
  br i1 %tobool, label %land.lhs.true, label %entry.if.end5_crit_edge

entry.if.end5_crit_edge:                          ; preds = %entry
  br label %if.end5

land.lhs.true:                                    ; preds = %entry
  %tmp1 = load i8*, i8** %s, align 8
  %tmp2 = load i8, i8* %tmp1, align 1
  %conv = sext i8 %tmp2 to i32
  %tobool1 = icmp ne i32 %conv, 0
  br i1 %tobool1, label %if.then, label %land.lhs.true.if.end5_crit_edge

land.lhs.true.if.end5_crit_edge:                  ; preds = %land.lhs.true
  br label %if.end5

if.then:                                          ; preds = %land.lhs.true
  %tmp3 = load i8*, i8** %s, align 8
  %call2 = call i64 @strtol(i8* %tmp3, i8** %e, i32 10) #8
  store i64 %call2, i64* %i, align 8
  %tmp4 = load i8*, i8** %e, align 8
  %tmp5 = load i8, i8* %tmp4, align 1
  %tobool3 = icmp ne i8 %tmp5, 0
  br i1 %tobool3, label %if.then.if.end_crit_edge, label %if.then4

if.then.if.end_crit_edge:                         ; preds = %if.then
  br label %if.end

if.then4:                                         ; preds = %if.then
  %tmp6 = load i64, i64* %i, align 8
  store i64 %tmp6, i64* %v, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.if.end_crit_edge, %if.then4
  br label %if.end5

if.end5:                                          ; preds = %land.lhs.true.if.end5_crit_edge, %entry.if.end5_crit_edge, %if.end
  %tmp7 = load i64, i64* %v, align 8
  %cmp = icmp slt i64 %tmp7, -2147483648
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end5
  store i64 -2147483648, i64* %cond12.reg2mem
  br label %cond.end11

cond.false:                                       ; preds = %if.end5
  %tmp8 = load i64, i64* %v, align 8
  %cmp7 = icmp slt i64 %tmp8, 2147483647
  br i1 %cmp7, label %cond.true9, label %cond.false10

cond.true9:                                       ; preds = %cond.false
  %tmp9 = load i64, i64* %v, align 8
  store i64 %tmp9, i64* %tmp9.reg2mem
  %tmp9.reload = load i64, i64* %tmp9.reg2mem
  store i64 %tmp9.reload, i64* %cond.reg2mem10
  br label %cond.end

cond.false10:                                     ; preds = %cond.false
  store i64 2147483647, i64* %cond.reg2mem10
  br label %cond.end

cond.end:                                         ; preds = %cond.false10, %cond.true9
  %cond.reload11 = load i64, i64* %cond.reg2mem10
  store i64 %cond.reload11, i64* %cond.reg2mem
  %cond.reload = load i64, i64* %cond.reg2mem
  store i64 %cond.reload, i64* %cond12.reg2mem
  br label %cond.end11

cond.end11:                                       ; preds = %cond.end, %cond.true
  %cond12.reload = load i64, i64* %cond12.reg2mem
  %conv13 = trunc i64 %cond12.reload to i32
  ret i32 %conv13
}

; Function Attrs: nounwind
declare i64 @strtol(i8*, i8**, i32) #2

; Function Attrs: nounwind uwtable
define i8* @quote_n(i32 %n, i8* %name) #0 {
entry:
  %n.addr = alloca i32, align 4
  %name.addr = alloca i8*, align 8
  %"reg2mem alloca point" = bitcast i32 0 to i32
  store i32 %n, i32* %n.addr, align 4
  store i8* %name, i8** %name.addr, align 8
  %tmp = load i32, i32* %n.addr, align 4
  %tmp1 = load i8*, i8** %name.addr, align 8
  %call = call i8* @quotearg_n_style(i32 %tmp, i32 6, i8* %tmp1)
  ret i8* %call
}

; Function Attrs: nounwind uwtable
define i8* @quote(i8* %name) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %"reg2mem alloca point" = bitcast i32 0 to i32
  store i8* %name, i8** %name.addr, align 8
  %tmp = load i8*, i8** %name.addr, align 8
  %call = call i8* @quote_n(i32 0, i8* %tmp)
  ret i8* %call
}

; Function Attrs: nounwind uwtable
define %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* %o) #0 {
entry:
  %o.addr = alloca %struct.quoting_options*, align 8
  %e = alloca i32, align 4
  %p = alloca %struct.quoting_options*, align 8
  %tmp2.reg2mem = alloca %struct.quoting_options*
  %cond.reg2mem = alloca %struct.quoting_options*
  %"reg2mem alloca point" = bitcast i32 0 to i32
  store %struct.quoting_options* %o, %struct.quoting_options** %o.addr, align 8
  %call = call i32* @__errno_location() #14
  %tmp = load i32, i32* %call, align 4
  store i32 %tmp, i32* %e, align 4
  %tmp1 = load %struct.quoting_options*, %struct.quoting_options** %o.addr, align 8
  %tobool = icmp ne %struct.quoting_options* %tmp1, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %tmp2 = load %struct.quoting_options*, %struct.quoting_options** %o.addr, align 8
  store %struct.quoting_options* %tmp2, %struct.quoting_options** %tmp2.reg2mem
  %tmp2.reload = load %struct.quoting_options*, %struct.quoting_options** %tmp2.reg2mem
  store %struct.quoting_options* %tmp2.reload, %struct.quoting_options** %cond.reg2mem
  br label %cond.end

cond.false:                                       ; preds = %entry
  store %struct.quoting_options* @default_quoting_options, %struct.quoting_options** %cond.reg2mem
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond.reload = load %struct.quoting_options*, %struct.quoting_options** %cond.reg2mem
  %tmp3 = bitcast %struct.quoting_options* %cond.reload to i8*
  %call1 = call i8* @xmemdup(i8* %tmp3, i64 40)
  %tmp4 = bitcast i8* %call1 to %struct.quoting_options*
  store %struct.quoting_options* %tmp4, %struct.quoting_options** %p, align 8
  %tmp5 = load i32, i32* %e, align 4
  %call2 = call i32* @__errno_location() #14
  store i32 %tmp5, i32* %call2, align 4
  %tmp6 = load %struct.quoting_options*, %struct.quoting_options** %p, align 8
  ret %struct.quoting_options* %tmp6
}

; Function Attrs: nounwind uwtable
define i32 @get_quoting_style(%struct.quoting_options* %o) #0 {
entry:
  %o.addr = alloca %struct.quoting_options*, align 8
  %tmp1.reg2mem = alloca %struct.quoting_options*
  %cond.reg2mem = alloca %struct.quoting_options*
  %"reg2mem alloca point" = bitcast i32 0 to i32
  store %struct.quoting_options* %o, %struct.quoting_options** %o.addr, align 8
  %tmp = load %struct.quoting_options*, %struct.quoting_options** %o.addr, align 8
  %tobool = icmp ne %struct.quoting_options* %tmp, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %tmp1 = load %struct.quoting_options*, %struct.quoting_options** %o.addr, align 8
  store %struct.quoting_options* %tmp1, %struct.quoting_options** %tmp1.reg2mem
  %tmp1.reload = load %struct.quoting_options*, %struct.quoting_options** %tmp1.reg2mem
  store %struct.quoting_options* %tmp1.reload, %struct.quoting_options** %cond.reg2mem
  br label %cond.end

cond.false:                                       ; preds = %entry
  store %struct.quoting_options* @default_quoting_options, %struct.quoting_options** %cond.reg2mem
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond.reload = load %struct.quoting_options*, %struct.quoting_options** %cond.reg2mem
  %style = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %cond.reload, i32 0, i32 0
  %tmp2 = load i32, i32* %style, align 4
  ret i32 %tmp2
}

; Function Attrs: nounwind uwtable
define void @set_quoting_style(%struct.quoting_options* %o, i32 %s) #0 {
entry:
  %o.addr = alloca %struct.quoting_options*, align 8
  %s.addr = alloca i32, align 4
  %tmp2.reg2mem = alloca %struct.quoting_options*
  %tmp.reg2mem = alloca i32
  %cond.reg2mem = alloca %struct.quoting_options*
  %"reg2mem alloca point" = bitcast i32 0 to i32
  store %struct.quoting_options* %o, %struct.quoting_options** %o.addr, align 8
  store i32 %s, i32* %s.addr, align 4
  %tmp = load i32, i32* %s.addr, align 4
  store i32 %tmp, i32* %tmp.reg2mem
  %tmp1 = load %struct.quoting_options*, %struct.quoting_options** %o.addr, align 8
  %tobool = icmp ne %struct.quoting_options* %tmp1, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %tmp2 = load %struct.quoting_options*, %struct.quoting_options** %o.addr, align 8
  store %struct.quoting_options* %tmp2, %struct.quoting_options** %tmp2.reg2mem
  %tmp2.reload = load %struct.quoting_options*, %struct.quoting_options** %tmp2.reg2mem
  store %struct.quoting_options* %tmp2.reload, %struct.quoting_options** %cond.reg2mem
  br label %cond.end

cond.false:                                       ; preds = %entry
  store %struct.quoting_options* @default_quoting_options, %struct.quoting_options** %cond.reg2mem
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond.reload = load %struct.quoting_options*, %struct.quoting_options** %cond.reg2mem
  %style = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %cond.reload, i32 0, i32 0
  %tmp.reload = load i32, i32* %tmp.reg2mem
  store i32 %tmp.reload, i32* %style, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @set_char_quoting(%struct.quoting_options* %o, i8 signext %c, i32 %i) #0 {
entry:
  %o.addr = alloca %struct.quoting_options*, align 8
  %c.addr = alloca i8, align 1
  %i.addr = alloca i32, align 4
  %uc = alloca i8, align 1
  %p = alloca i32*, align 8
  %shift = alloca i32, align 4
  %r = alloca i32, align 4
  %tmp2.reg2mem = alloca %struct.quoting_options*
  %cond.reg2mem = alloca %struct.quoting_options*
  %"reg2mem alloca point" = bitcast i32 0 to i32
  store %struct.quoting_options* %o, %struct.quoting_options** %o.addr, align 8
  store i8 %c, i8* %c.addr, align 1
  store i32 %i, i32* %i.addr, align 4
  %tmp = load i8, i8* %c.addr, align 1
  store i8 %tmp, i8* %uc, align 1
  %tmp1 = load %struct.quoting_options*, %struct.quoting_options** %o.addr, align 8
  %tobool = icmp ne %struct.quoting_options* %tmp1, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %tmp2 = load %struct.quoting_options*, %struct.quoting_options** %o.addr, align 8
  store %struct.quoting_options* %tmp2, %struct.quoting_options** %tmp2.reg2mem
  %tmp2.reload = load %struct.quoting_options*, %struct.quoting_options** %tmp2.reg2mem
  store %struct.quoting_options* %tmp2.reload, %struct.quoting_options** %cond.reg2mem
  br label %cond.end

cond.false:                                       ; preds = %entry
  store %struct.quoting_options* @default_quoting_options, %struct.quoting_options** %cond.reg2mem
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond.reload = load %struct.quoting_options*, %struct.quoting_options** %cond.reg2mem
  %quote_these_too = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %cond.reload, i32 0, i32 2
  %arraydecay = getelementptr inbounds [8 x i32], [8 x i32]* %quote_these_too, i32 0, i32 0
  %tmp3 = load i8, i8* %uc, align 1
  %conv = zext i8 %tmp3 to i64
  %div = udiv i64 %conv, 32
  %add.ptr = getelementptr inbounds i32, i32* %arraydecay, i64 %div
  store i32* %add.ptr, i32** %p, align 8
  %tmp4 = load i8, i8* %uc, align 1
  %conv1 = zext i8 %tmp4 to i64
  %rem = urem i64 %conv1, 32
  %conv2 = trunc i64 %rem to i32
  store i32 %conv2, i32* %shift, align 4
  %tmp5 = load i32*, i32** %p, align 8
  %tmp6 = load i32, i32* %tmp5, align 4
  %tmp7 = load i32, i32* %shift, align 4
  %shr = lshr i32 %tmp6, %tmp7
  %and = and i32 %shr, 1
  store i32 %and, i32* %r, align 4
  %tmp8 = load i32, i32* %i.addr, align 4
  %and3 = and i32 %tmp8, 1
  %tmp9 = load i32, i32* %r, align 4
  %xor = xor i32 %and3, %tmp9
  %tmp10 = load i32, i32* %shift, align 4
  %shl = shl i32 %xor, %tmp10
  %tmp11 = load i32*, i32** %p, align 8
  %tmp12 = load i32, i32* %tmp11, align 4
  %xor4 = xor i32 %tmp12, %shl
  store i32 %xor4, i32* %tmp11, align 4
  %tmp13 = load i32, i32* %r, align 4
  ret i32 %tmp13
}

; Function Attrs: nounwind uwtable
define i32 @set_quoting_flags(%struct.quoting_options* %o, i32 %i) #0 {
entry:
  %o.addr = alloca %struct.quoting_options*, align 8
  %i.addr = alloca i32, align 4
  %r = alloca i32, align 4
  %"reg2mem alloca point" = bitcast i32 0 to i32
  store %struct.quoting_options* %o, %struct.quoting_options** %o.addr, align 8
  store i32 %i, i32* %i.addr, align 4
  %tmp = load %struct.quoting_options*, %struct.quoting_options** %o.addr, align 8
  %tobool = icmp ne %struct.quoting_options* %tmp, null
  br i1 %tobool, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  br label %if.end

if.then:                                          ; preds = %entry
  store %struct.quoting_options* @default_quoting_options, %struct.quoting_options** %o.addr, align 8
  br label %if.end

if.end:                                           ; preds = %entry.if.end_crit_edge, %if.then
  %tmp1 = load %struct.quoting_options*, %struct.quoting_options** %o.addr, align 8
  %flags = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %tmp1, i32 0, i32 1
  %tmp2 = load i32, i32* %flags, align 4
  store i32 %tmp2, i32* %r, align 4
  %tmp3 = load i32, i32* %i.addr, align 4
  %tmp4 = load %struct.quoting_options*, %struct.quoting_options** %o.addr, align 8
  %flags1 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %tmp4, i32 0, i32 1
  store i32 %tmp3, i32* %flags1, align 4
  %tmp5 = load i32, i32* %r, align 4
  ret i32 %tmp5
}

; Function Attrs: nounwind uwtable
define i64 @quotearg_buffer(i8* %buffer, i64 %buffersize, i8* %arg, i64 %argsize, %struct.quoting_options* %o) #0 {
entry:
  %buffer.addr = alloca i8*, align 8
  %buffersize.addr = alloca i64, align 8
  %arg.addr = alloca i8*, align 8
  %argsize.addr = alloca i64, align 8
  %o.addr = alloca %struct.quoting_options*, align 8
  %p = alloca %struct.quoting_options*, align 8
  %e = alloca i32, align 4
  %r = alloca i64, align 8
  %tmp1.reg2mem = alloca %struct.quoting_options*
  %cond.reg2mem = alloca %struct.quoting_options*
  %"reg2mem alloca point" = bitcast i32 0 to i32
  store i8* %buffer, i8** %buffer.addr, align 8
  store i64 %buffersize, i64* %buffersize.addr, align 8
  store i8* %arg, i8** %arg.addr, align 8
  store i64 %argsize, i64* %argsize.addr, align 8
  store %struct.quoting_options* %o, %struct.quoting_options** %o.addr, align 8
  %tmp = load %struct.quoting_options*, %struct.quoting_options** %o.addr, align 8
  %tobool = icmp ne %struct.quoting_options* %tmp, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %tmp1 = load %struct.quoting_options*, %struct.quoting_options** %o.addr, align 8
  store %struct.quoting_options* %tmp1, %struct.quoting_options** %tmp1.reg2mem
  %tmp1.reload = load %struct.quoting_options*, %struct.quoting_options** %tmp1.reg2mem
  store %struct.quoting_options* %tmp1.reload, %struct.quoting_options** %cond.reg2mem
  br label %cond.end

cond.false:                                       ; preds = %entry
  store %struct.quoting_options* @default_quoting_options, %struct.quoting_options** %cond.reg2mem
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond.reload = load %struct.quoting_options*, %struct.quoting_options** %cond.reg2mem
  store %struct.quoting_options* %cond.reload, %struct.quoting_options** %p, align 8
  %call = call i32* @__errno_location() #14
  %tmp2 = load i32, i32* %call, align 4
  store i32 %tmp2, i32* %e, align 4
  %tmp3 = load i8*, i8** %buffer.addr, align 8
  %tmp4 = load i64, i64* %buffersize.addr, align 8
  %tmp5 = load i8*, i8** %arg.addr, align 8
  %tmp6 = load i64, i64* %argsize.addr, align 8
  %tmp7 = load %struct.quoting_options*, %struct.quoting_options** %p, align 8
  %style = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %tmp7, i32 0, i32 0
  %tmp8 = load i32, i32* %style, align 4
  %tmp9 = load %struct.quoting_options*, %struct.quoting_options** %p, align 8
  %flags = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %tmp9, i32 0, i32 1
  %tmp10 = load i32, i32* %flags, align 4
  %tmp11 = load %struct.quoting_options*, %struct.quoting_options** %p, align 8
  %quote_these_too = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %tmp11, i32 0, i32 2
  %arraydecay = getelementptr inbounds [8 x i32], [8 x i32]* %quote_these_too, i32 0, i32 0
  %call1 = call i64 @quotearg_buffer_restyled(i8* %tmp3, i64 %tmp4, i8* %tmp5, i64 %tmp6, i32 %tmp8, i32 %tmp10, i32* %arraydecay)
  store i64 %call1, i64* %r, align 8
  %tmp12 = load i32, i32* %e, align 4
  %call2 = call i32* @__errno_location() #14
  store i32 %tmp12, i32* %call2, align 4
  %tmp13 = load i64, i64* %r, align 8
  ret i64 %tmp13
}

; Function Attrs: nounwind uwtable
define i8* @quotearg_alloc(i8* %arg, i64 %argsize, %struct.quoting_options* %o) #0 {
entry:
  %arg.addr = alloca i8*, align 8
  %argsize.addr = alloca i64, align 8
  %o.addr = alloca %struct.quoting_options*, align 8
  %"reg2mem alloca point" = bitcast i32 0 to i32
  store i8* %arg, i8** %arg.addr, align 8
  store i64 %argsize, i64* %argsize.addr, align 8
  store %struct.quoting_options* %o, %struct.quoting_options** %o.addr, align 8
  %tmp = load i8*, i8** %arg.addr, align 8
  %tmp1 = load i64, i64* %argsize.addr, align 8
  %tmp2 = load %struct.quoting_options*, %struct.quoting_options** %o.addr, align 8
  %call = call i8* @quotearg_alloc_mem(i8* %tmp, i64 %tmp1, i64* null, %struct.quoting_options* %tmp2)
  ret i8* %call
}

; Function Attrs: nounwind uwtable
define i8* @quotearg_alloc_mem(i8* %arg, i64 %argsize, i64* %size, %struct.quoting_options* %o) #0 {
entry:
  %arg.addr = alloca i8*, align 8
  %argsize.addr = alloca i64, align 8
  %size.addr = alloca i64*, align 8
  %o.addr = alloca %struct.quoting_options*, align 8
  %p = alloca %struct.quoting_options*, align 8
  %e = alloca i32, align 4
  %flags = alloca i32, align 4
  %bufsize = alloca i64, align 8
  %buf = alloca i8*, align 8
  %tmp1.reg2mem = alloca %struct.quoting_options*
  %cond.reg2mem = alloca %struct.quoting_options*
  %"reg2mem alloca point" = bitcast i32 0 to i32
  store i8* %arg, i8** %arg.addr, align 8
  store i64 %argsize, i64* %argsize.addr, align 8
  store i64* %size, i64** %size.addr, align 8
  store %struct.quoting_options* %o, %struct.quoting_options** %o.addr, align 8
  %tmp = load %struct.quoting_options*, %struct.quoting_options** %o.addr, align 8
  %tobool = icmp ne %struct.quoting_options* %tmp, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %tmp1 = load %struct.quoting_options*, %struct.quoting_options** %o.addr, align 8
  store %struct.quoting_options* %tmp1, %struct.quoting_options** %tmp1.reg2mem
  %tmp1.reload = load %struct.quoting_options*, %struct.quoting_options** %tmp1.reg2mem
  store %struct.quoting_options* %tmp1.reload, %struct.quoting_options** %cond.reg2mem
  br label %cond.end

cond.false:                                       ; preds = %entry
  store %struct.quoting_options* @default_quoting_options, %struct.quoting_options** %cond.reg2mem
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond.reload = load %struct.quoting_options*, %struct.quoting_options** %cond.reg2mem
  store %struct.quoting_options* %cond.reload, %struct.quoting_options** %p, align 8
  %call = call i32* @__errno_location() #14
  %tmp2 = load i32, i32* %call, align 4
  store i32 %tmp2, i32* %e, align 4
  %tmp3 = load %struct.quoting_options*, %struct.quoting_options** %p, align 8
  %flags1 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %tmp3, i32 0, i32 1
  %tmp4 = load i32, i32* %flags1, align 4
  %tmp5 = load i64*, i64** %size.addr, align 8
  %tobool2 = icmp ne i64* %tmp5, null
  %cond3 = select i1 %tobool2, i32 0, i32 1
  %or = or i32 %tmp4, %cond3
  store i32 %or, i32* %flags, align 4
  %tmp6 = load i8*, i8** %arg.addr, align 8
  %tmp7 = load i64, i64* %argsize.addr, align 8
  %tmp8 = load %struct.quoting_options*, %struct.quoting_options** %p, align 8
  %style = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %tmp8, i32 0, i32 0
  %tmp9 = load i32, i32* %style, align 4
  %tmp10 = load i32, i32* %flags, align 4
  %tmp11 = load %struct.quoting_options*, %struct.quoting_options** %p, align 8
  %quote_these_too = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %tmp11, i32 0, i32 2
  %arraydecay = getelementptr inbounds [8 x i32], [8 x i32]* %quote_these_too, i32 0, i32 0
  %call4 = call i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %tmp6, i64 %tmp7, i32 %tmp9, i32 %tmp10, i32* %arraydecay)
  %add = add i64 %call4, 1
  store i64 %add, i64* %bufsize, align 8
  %tmp12 = load i64, i64* %bufsize, align 8
  %call5 = call i8* @xcharalloc(i64 %tmp12)
  store i8* %call5, i8** %buf, align 8
  %tmp13 = load i8*, i8** %buf, align 8
  %tmp14 = load i64, i64* %bufsize, align 8
  %tmp15 = load i8*, i8** %arg.addr, align 8
  %tmp16 = load i64, i64* %argsize.addr, align 8
  %tmp17 = load %struct.quoting_options*, %struct.quoting_options** %p, align 8
  %style6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %tmp17, i32 0, i32 0
  %tmp18 = load i32, i32* %style6, align 4
  %tmp19 = load i32, i32* %flags, align 4
  %tmp20 = load %struct.quoting_options*, %struct.quoting_options** %p, align 8
  %quote_these_too7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %tmp20, i32 0, i32 2
  %arraydecay8 = getelementptr inbounds [8 x i32], [8 x i32]* %quote_these_too7, i32 0, i32 0
  %call9 = call i64 @quotearg_buffer_restyled(i8* %tmp13, i64 %tmp14, i8* %tmp15, i64 %tmp16, i32 %tmp18, i32 %tmp19, i32* %arraydecay8)
  %tmp21 = load i32, i32* %e, align 4
  %call10 = call i32* @__errno_location() #14
  store i32 %tmp21, i32* %call10, align 4
  %tmp22 = load i64*, i64** %size.addr, align 8
  %tobool11 = icmp ne i64* %tmp22, null
  br i1 %tobool11, label %if.then, label %cond.end.if.end_crit_edge

cond.end.if.end_crit_edge:                        ; preds = %cond.end
  br label %if.end

if.then:                                          ; preds = %cond.end
  %tmp23 = load i64, i64* %bufsize, align 8
  %sub = sub i64 %tmp23, 1
  %tmp24 = load i64*, i64** %size.addr, align 8
  store i64 %sub, i64* %tmp24, align 8
  br label %if.end

if.end:                                           ; preds = %cond.end.if.end_crit_edge, %if.then
  %tmp25 = load i8*, i8** %buf, align 8
  ret i8* %tmp25
}

; Function Attrs: nounwind uwtable
define void @quotearg_free() #0 {
entry:
  %sv = alloca %struct.slotvec*, align 8
  %i = alloca i32, align 4
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %tmp = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8
  store %struct.slotvec* %tmp, %struct.slotvec** %sv, align 8
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %tmp1 = load i32, i32* %i, align 4
  %tmp2 = load i32, i32* @nslots, align 4
  %cmp = icmp ult i32 %tmp1, %tmp2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %tmp3 = load i32, i32* %i, align 4
  %idxprom = zext i32 %tmp3 to i64
  %tmp4 = load %struct.slotvec*, %struct.slotvec** %sv, align 8
  %arrayidx = getelementptr inbounds %struct.slotvec, %struct.slotvec* %tmp4, i64 %idxprom
  %val = getelementptr inbounds %struct.slotvec, %struct.slotvec* %arrayidx, i32 0, i32 1
  %tmp5 = load i8*, i8** %val, align 8
  call void @free(i8* %tmp5) #8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %tmp6 = load i32, i32* %i, align 4
  %inc = add i32 %tmp6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %tmp7 = load %struct.slotvec*, %struct.slotvec** %sv, align 8
  %arrayidx1 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %tmp7, i64 0
  %val2 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %arrayidx1, i32 0, i32 1
  %tmp8 = load i8*, i8** %val2, align 8
  %cmp3 = icmp ne i8* %tmp8, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0)
  br i1 %cmp3, label %if.then, label %for.end.if.end_crit_edge

for.end.if.end_crit_edge:                         ; preds = %for.end
  br label %if.end

if.then:                                          ; preds = %for.end
  %tmp9 = load %struct.slotvec*, %struct.slotvec** %sv, align 8
  %arrayidx4 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %tmp9, i64 0
  %val5 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %arrayidx4, i32 0, i32 1
  %tmp10 = load i8*, i8** %val5, align 8
  call void @free(i8* %tmp10) #8
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i32 0, i32 0), align 8
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i32 0, i32 1), align 8
  br label %if.end

if.end:                                           ; preds = %for.end.if.end_crit_edge, %if.then
  %tmp11 = load %struct.slotvec*, %struct.slotvec** %sv, align 8
  %cmp6 = icmp ne %struct.slotvec* %tmp11, @slotvec0
  br i1 %cmp6, label %if.then7, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  br label %if.end8

if.then7:                                         ; preds = %if.end
  %tmp12 = load %struct.slotvec*, %struct.slotvec** %sv, align 8
  %tmp13 = bitcast %struct.slotvec* %tmp12 to i8*
  call void @free(i8* %tmp13) #8
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8
  br label %if.end8

if.end8:                                          ; preds = %if.end.if.end8_crit_edge, %if.then7
  store i32 1, i32* @nslots, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define i8* @quotearg_n(i32 %n, i8* %arg) #0 {
entry:
  %n.addr = alloca i32, align 4
  %arg.addr = alloca i8*, align 8
  %"reg2mem alloca point" = bitcast i32 0 to i32
  store i32 %n, i32* %n.addr, align 4
  store i8* %arg, i8** %arg.addr, align 8
  %tmp = load i32, i32* %n.addr, align 4
  %tmp1 = load i8*, i8** %arg.addr, align 8
  %call = call i8* @quotearg_n_options(i32 %tmp, i8* %tmp1, i64 -1, %struct.quoting_options* @default_quoting_options)
  ret i8* %call
}

; Function Attrs: nounwind uwtable
define i8* @quotearg_n_mem(i32 %n, i8* %arg, i64 %argsize) #0 {
entry:
  %n.addr = alloca i32, align 4
  %arg.addr = alloca i8*, align 8
  %argsize.addr = alloca i64, align 8
  %"reg2mem alloca point" = bitcast i32 0 to i32
  store i32 %n, i32* %n.addr, align 4
  store i8* %arg, i8** %arg.addr, align 8
  store i64 %argsize, i64* %argsize.addr, align 8
  %tmp = load i32, i32* %n.addr, align 4
  %tmp1 = load i8*, i8** %arg.addr, align 8
  %tmp2 = load i64, i64* %argsize.addr, align 8
  %call = call i8* @quotearg_n_options(i32 %tmp, i8* %tmp1, i64 %tmp2, %struct.quoting_options* @default_quoting_options)
  ret i8* %call
}

; Function Attrs: nounwind uwtable
define i8* @quotearg(i8* %arg) #0 {
entry:
  %arg.addr = alloca i8*, align 8
  %"reg2mem alloca point" = bitcast i32 0 to i32
  store i8* %arg, i8** %arg.addr, align 8
  %tmp = load i8*, i8** %arg.addr, align 8
  %call = call i8* @quotearg_n(i32 0, i8* %tmp)
  ret i8* %call
}

; Function Attrs: nounwind uwtable
define i8* @quotearg_mem(i8* %arg, i64 %argsize) #0 {
entry:
  %arg.addr = alloca i8*, align 8
  %argsize.addr = alloca i64, align 8
  %"reg2mem alloca point" = bitcast i32 0 to i32
  store i8* %arg, i8** %arg.addr, align 8
  store i64 %argsize, i64* %argsize.addr, align 8
  %tmp = load i8*, i8** %arg.addr, align 8
  %tmp1 = load i64, i64* %argsize.addr, align 8
  %call = call i8* @quotearg_n_mem(i32 0, i8* %tmp, i64 %tmp1)
  ret i8* %call
}

; Function Attrs: nounwind uwtable
define i8* @quotearg_n_style(i32 %n, i32 %s, i8* %arg) #0 {
entry:
  %n.addr = alloca i32, align 4
  %s.addr = alloca i32, align 4
  %arg.addr = alloca i8*, align 8
  %o = alloca %struct.quoting_options, align 4
  %"reg2mem alloca point" = bitcast i32 0 to i32
  store i32 %n, i32* %n.addr, align 4
  store i32 %s, i32* %s.addr, align 4
  store i8* %arg, i8** %arg.addr, align 8
  %tmp = load i32, i32* %s.addr, align 4
  call void @quoting_options_from_style(%struct.quoting_options* sret %o, i32 %tmp)
  %tmp1 = load i32, i32* %n.addr, align 4
  %tmp2 = load i8*, i8** %arg.addr, align 8
  %call = call i8* @quotearg_n_options(i32 %tmp1, i8* %tmp2, i64 -1, %struct.quoting_options* %o)
  ret i8* %call
}

; Function Attrs: nounwind uwtable
define i8* @quotearg_n_style_mem(i32 %n, i32 %s, i8* %arg, i64 %argsize) #0 {
entry:
  %n.addr = alloca i32, align 4
  %s.addr = alloca i32, align 4
  %arg.addr = alloca i8*, align 8
  %argsize.addr = alloca i64, align 8
  %o = alloca %struct.quoting_options, align 4
  %"reg2mem alloca point" = bitcast i32 0 to i32
  store i32 %n, i32* %n.addr, align 4
  store i32 %s, i32* %s.addr, align 4
  store i8* %arg, i8** %arg.addr, align 8
  store i64 %argsize, i64* %argsize.addr, align 8
  %tmp = load i32, i32* %s.addr, align 4
  call void @quoting_options_from_style(%struct.quoting_options* sret %o, i32 %tmp)
  %tmp1 = load i32, i32* %n.addr, align 4
  %tmp2 = load i8*, i8** %arg.addr, align 8
  %tmp3 = load i64, i64* %argsize.addr, align 8
  %call = call i8* @quotearg_n_options(i32 %tmp1, i8* %tmp2, i64 %tmp3, %struct.quoting_options* %o)
  ret i8* %call
}

; Function Attrs: nounwind uwtable
define i8* @quotearg_style(i32 %s, i8* %arg) #0 {
entry:
  %s.addr = alloca i32, align 4
  %arg.addr = alloca i8*, align 8
  %"reg2mem alloca point" = bitcast i32 0 to i32
  store i32 %s, i32* %s.addr, align 4
  store i8* %arg, i8** %arg.addr, align 8
  %tmp = load i32, i32* %s.addr, align 4
  %tmp1 = load i8*, i8** %arg.addr, align 8
  %call = call i8* @quotearg_n_style(i32 0, i32 %tmp, i8* %tmp1)
  ret i8* %call
}

; Function Attrs: nounwind uwtable
define i8* @quotearg_style_mem(i32 %s, i8* %arg, i64 %argsize) #0 {
entry:
  %s.addr = alloca i32, align 4
  %arg.addr = alloca i8*, align 8
  %argsize.addr = alloca i64, align 8
  %"reg2mem alloca point" = bitcast i32 0 to i32
  store i32 %s, i32* %s.addr, align 4
  store i8* %arg, i8** %arg.addr, align 8
  store i64 %argsize, i64* %argsize.addr, align 8
  %tmp = load i32, i32* %s.addr, align 4
  %tmp1 = load i8*, i8** %arg.addr, align 8
  %tmp2 = load i64, i64* %argsize.addr, align 8
  %call = call i8* @quotearg_n_style_mem(i32 0, i32 %tmp, i8* %tmp1, i64 %tmp2)
  ret i8* %call
}

; Function Attrs: nounwind uwtable
define i8* @quotearg_char_mem(i8* %arg, i64 %argsize, i8 signext %ch) #0 {
entry:
  %arg.addr = alloca i8*, align 8
  %argsize.addr = alloca i64, align 8
  %ch.addr = alloca i8, align 1
  %options = alloca %struct.quoting_options, align 4
  %"reg2mem alloca point" = bitcast i32 0 to i32
  store i8* %arg, i8** %arg.addr, align 8
  store i64 %argsize, i64* %argsize.addr, align 8
  store i8 %ch, i8* %ch.addr, align 1
  %tmp = bitcast %struct.quoting_options* %options to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %tmp, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i32 4, i1 false)
  %tmp1 = load i8, i8* %ch.addr, align 1
  %call = call i32 @set_char_quoting(%struct.quoting_options* %options, i8 signext %tmp1, i32 1)
  %tmp2 = load i8*, i8** %arg.addr, align 8
  %tmp3 = load i64, i64* %argsize.addr, align 8
  %call1 = call i8* @quotearg_n_options(i32 0, i8* %tmp2, i64 %tmp3, %struct.quoting_options* %options)
  ret i8* %call1
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #7

; Function Attrs: nounwind uwtable
define i8* @quotearg_char(i8* %arg, i8 signext %ch) #0 {
entry:
  %arg.addr = alloca i8*, align 8
  %ch.addr = alloca i8, align 1
  %"reg2mem alloca point" = bitcast i32 0 to i32
  store i8* %arg, i8** %arg.addr, align 8
  store i8 %ch, i8* %ch.addr, align 1
  %tmp = load i8*, i8** %arg.addr, align 8
  %tmp1 = load i8, i8* %ch.addr, align 1
  %call = call i8* @quotearg_char_mem(i8* %tmp, i64 -1, i8 signext %tmp1)
  ret i8* %call
}

; Function Attrs: nounwind uwtable
define i8* @quotearg_colon(i8* %arg) #0 {
entry:
  %arg.addr = alloca i8*, align 8
  %"reg2mem alloca point" = bitcast i32 0 to i32
  store i8* %arg, i8** %arg.addr, align 8
  %tmp = load i8*, i8** %arg.addr, align 8
  %call = call i8* @quotearg_char(i8* %tmp, i8 signext 58)
  ret i8* %call
}

; Function Attrs: nounwind uwtable
define i8* @quotearg_colon_mem(i8* %arg, i64 %argsize) #0 {
entry:
  %arg.addr = alloca i8*, align 8
  %argsize.addr = alloca i64, align 8
  %"reg2mem alloca point" = bitcast i32 0 to i32
  store i8* %arg, i8** %arg.addr, align 8
  store i64 %argsize, i64* %argsize.addr, align 8
  %tmp = load i8*, i8** %arg.addr, align 8
  %tmp1 = load i64, i64* %argsize.addr, align 8
  %call = call i8* @quotearg_char_mem(i8* %tmp, i64 %tmp1, i8 signext 58)
  ret i8* %call
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() #2

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) #2

; Function Attrs: nounwind
declare i32 @iswprint(i32) #2

; Function Attrs: nounwind readonly
declare i32 @mbsinit(%struct.__mbstate_t*) #5

; Function Attrs: nounwind uwtable
define internal i64 @quotearg_buffer_restyled(i8* %buffer, i64 %buffersize, i8* %arg, i64 %argsize, i32 %quoting_style, i32 %flags, i32* %quote_these_too) #0 {
entry:
  %retval = alloca i64, align 8
  %buffer.addr = alloca i8*, align 8
  %buffersize.addr = alloca i64, align 8
  %arg.addr = alloca i8*, align 8
  %argsize.addr = alloca i64, align 8
  %quoting_style.addr = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %quote_these_too.addr = alloca i32*, align 8
  %i = alloca i64, align 8
  %len = alloca i64, align 8
  %quote_string = alloca i8*, align 8
  %quote_string_len = alloca i64, align 8
  %backslash_escapes = alloca i8, align 1
  %unibyte_locale = alloca i8, align 1
  %elide_outer_quotes = alloca i8, align 1
  %left = alloca i8*, align 8
  %right = alloca i8*, align 8
  %c = alloca i8, align 1
  %esc = alloca i8, align 1
  %m = alloca i64, align 8
  %printable = alloca i8, align 1
  %mbstate = alloca %struct.__mbstate_t, align 4
  %w = alloca i32, align 4
  %bytes = alloca i64, align 8
  %j = alloca i64, align 8
  %ilim = alloca i64, align 8
  %tobool312.reg2mem = alloca i1
  %tmp172.reg2mem = alloca i1
  %"reg2mem alloca point" = bitcast i32 0 to i32
  store i8* %buffer, i8** %buffer.addr, align 8
  store i64 %buffersize, i64* %buffersize.addr, align 8
  store i8* %arg, i8** %arg.addr, align 8
  store i64 %argsize, i64* %argsize.addr, align 8
  store i32 %quoting_style, i32* %quoting_style.addr, align 4
  store i32 %flags, i32* %flags.addr, align 4
  store i32* %quote_these_too, i32** %quote_these_too.addr, align 8
  store i64 0, i64* %len, align 8
  store i8* null, i8** %quote_string, align 8
  store i64 0, i64* %quote_string_len, align 8
  store i8 0, i8* %backslash_escapes, align 1
  %call = call i64 @__ctype_get_mb_cur_max() #8
  %cmp = icmp eq i64 %call, 1
  %frombool = zext i1 %cmp to i8
  store i8 %frombool, i8* %unibyte_locale, align 1
  %tmp = load i32, i32* %flags.addr, align 4
  %and = and i32 %tmp, 2
  %cmp1 = icmp ne i32 %and, 0
  %frombool2 = zext i1 %cmp1 to i8
  store i8 %frombool2, i8* %elide_outer_quotes, align 1
  %tmp1 = load i32, i32* %quoting_style.addr, align 4
  switch i32 %tmp1, label %sw.default [
    i32 4, label %sw.bb
    i32 3, label %entry.sw.bb3_crit_edge
    i32 5, label %sw.bb7
    i32 6, label %entry.sw.bb8_crit_edge
    i32 7, label %entry.sw.bb8_crit_edge271
    i32 1, label %sw.bb23
    i32 2, label %entry.sw.bb24_crit_edge
    i32 0, label %sw.bb35
  ]

entry.sw.bb24_crit_edge:                          ; preds = %entry
  br label %sw.bb24

entry.sw.bb8_crit_edge271:                        ; preds = %entry
  br label %sw.bb8

entry.sw.bb8_crit_edge:                           ; preds = %entry
  br label %sw.bb8

entry.sw.bb3_crit_edge:                           ; preds = %entry
  br label %sw.bb3

sw.bb:                                            ; preds = %entry
  store i32 3, i32* %quoting_style.addr, align 4
  store i8 1, i8* %elide_outer_quotes, align 1
  br label %sw.bb3

sw.bb3:                                           ; preds = %entry.sw.bb3_crit_edge, %sw.bb
  %tmp2 = load i8, i8* %elide_outer_quotes, align 1
  %tobool = trunc i8 %tmp2 to i1
  br i1 %tobool, label %sw.bb3.if.end6_crit_edge, label %if.then

sw.bb3.if.end6_crit_edge:                         ; preds = %sw.bb3
  br label %if.end6

if.then:                                          ; preds = %sw.bb3
  br label %do.body

do.body:                                          ; preds = %if.then
  %tmp3 = load i64, i64* %len, align 8
  %tmp4 = load i64, i64* %buffersize.addr, align 8
  %cmp4 = icmp ult i64 %tmp3, %tmp4
  br i1 %cmp4, label %if.then5, label %do.body.if.end_crit_edge

do.body.if.end_crit_edge:                         ; preds = %do.body
  br label %if.end

if.then5:                                         ; preds = %do.body
  %tmp5 = load i64, i64* %len, align 8
  %tmp6 = load i8*, i8** %buffer.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %tmp6, i64 %tmp5
  store i8 34, i8* %arrayidx, align 1
  br label %if.end

if.end:                                           ; preds = %do.body.if.end_crit_edge, %if.then5
  %tmp7 = load i64, i64* %len, align 8
  %inc = add i64 %tmp7, 1
  store i64 %inc, i64* %len, align 8
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %if.end6

if.end6:                                          ; preds = %sw.bb3.if.end6_crit_edge, %do.end
  store i8 1, i8* %backslash_escapes, align 1
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str8112, i32 0, i32 0), i8** %quote_string, align 8
  store i64 1, i64* %quote_string_len, align 8
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  store i8 1, i8* %backslash_escapes, align 1
  store i8 0, i8* %elide_outer_quotes, align 1
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry.sw.bb8_crit_edge271, %entry.sw.bb8_crit_edge
  %tmp8 = load i32, i32* %quoting_style.addr, align 4
  %call9 = call i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str9113, i32 0, i32 0), i32 %tmp8)
  store i8* %call9, i8** %left, align 8
  %tmp9 = load i32, i32* %quoting_style.addr, align 4
  %call10 = call i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str10114, i32 0, i32 0), i32 %tmp9)
  store i8* %call10, i8** %right, align 8
  %tmp10 = load i8, i8* %elide_outer_quotes, align 1
  %tobool11 = trunc i8 %tmp10 to i1
  br i1 %tobool11, label %sw.bb8.if.end21_crit_edge, label %if.then12

sw.bb8.if.end21_crit_edge:                        ; preds = %sw.bb8
  br label %if.end21

if.then12:                                        ; preds = %sw.bb8
  %tmp11 = load i8*, i8** %left, align 8
  store i8* %tmp11, i8** %quote_string, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then12
  %tmp12 = load i8*, i8** %quote_string, align 8
  %tmp13 = load i8, i8* %tmp12, align 1
  %tobool13 = icmp ne i8 %tmp13, 0
  br i1 %tobool13, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %do.body14

do.body14:                                        ; preds = %for.body
  %tmp14 = load i64, i64* %len, align 8
  %tmp15 = load i64, i64* %buffersize.addr, align 8
  %cmp15 = icmp ult i64 %tmp14, %tmp15
  br i1 %cmp15, label %if.then16, label %do.body14.if.end18_crit_edge

do.body14.if.end18_crit_edge:                     ; preds = %do.body14
  br label %if.end18

if.then16:                                        ; preds = %do.body14
  %tmp16 = load i8*, i8** %quote_string, align 8
  %tmp17 = load i8, i8* %tmp16, align 1
  %tmp18 = load i64, i64* %len, align 8
  %tmp19 = load i8*, i8** %buffer.addr, align 8
  %arrayidx17 = getelementptr inbounds i8, i8* %tmp19, i64 %tmp18
  store i8 %tmp17, i8* %arrayidx17, align 1
  br label %if.end18

if.end18:                                         ; preds = %do.body14.if.end18_crit_edge, %if.then16
  %tmp20 = load i64, i64* %len, align 8
  %inc19 = add i64 %tmp20, 1
  store i64 %inc19, i64* %len, align 8
  br label %do.end20

do.end20:                                         ; preds = %if.end18
  br label %for.inc

for.inc:                                          ; preds = %do.end20
  %tmp21 = load i8*, i8** %quote_string, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %tmp21, i32 1
  store i8* %incdec.ptr, i8** %quote_string, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end21

if.end21:                                         ; preds = %sw.bb8.if.end21_crit_edge, %for.end
  store i8 1, i8* %backslash_escapes, align 1
  %tmp22 = load i8*, i8** %right, align 8
  store i8* %tmp22, i8** %quote_string, align 8
  %tmp23 = load i8*, i8** %quote_string, align 8
  %call22 = call i64 @strlen(i8* %tmp23) #13
  store i64 %call22, i64* %quote_string_len, align 8
  br label %sw.epilog

sw.bb23:                                          ; preds = %entry
  store i32 2, i32* %quoting_style.addr, align 4
  store i8 1, i8* %elide_outer_quotes, align 1
  br label %sw.bb24

sw.bb24:                                          ; preds = %entry.sw.bb24_crit_edge, %sw.bb23
  %tmp24 = load i8, i8* %elide_outer_quotes, align 1
  %tobool25 = trunc i8 %tmp24 to i1
  br i1 %tobool25, label %sw.bb24.if.end34_crit_edge, label %if.then26

sw.bb24.if.end34_crit_edge:                       ; preds = %sw.bb24
  br label %if.end34

if.then26:                                        ; preds = %sw.bb24
  br label %do.body27

do.body27:                                        ; preds = %if.then26
  %tmp25 = load i64, i64* %len, align 8
  %tmp26 = load i64, i64* %buffersize.addr, align 8
  %cmp28 = icmp ult i64 %tmp25, %tmp26
  br i1 %cmp28, label %if.then29, label %do.body27.if.end31_crit_edge

do.body27.if.end31_crit_edge:                     ; preds = %do.body27
  br label %if.end31

if.then29:                                        ; preds = %do.body27
  %tmp27 = load i64, i64* %len, align 8
  %tmp28 = load i8*, i8** %buffer.addr, align 8
  %arrayidx30 = getelementptr inbounds i8, i8* %tmp28, i64 %tmp27
  store i8 39, i8* %arrayidx30, align 1
  br label %if.end31

if.end31:                                         ; preds = %do.body27.if.end31_crit_edge, %if.then29
  %tmp29 = load i64, i64* %len, align 8
  %inc32 = add i64 %tmp29, 1
  store i64 %inc32, i64* %len, align 8
  br label %do.end33

do.end33:                                         ; preds = %if.end31
  br label %if.end34

if.end34:                                         ; preds = %sw.bb24.if.end34_crit_edge, %do.end33
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str10114, i32 0, i32 0), i8** %quote_string, align 8
  store i64 1, i64* %quote_string_len, align 8
  br label %sw.epilog

sw.bb35:                                          ; preds = %entry
  store i8 0, i8* %elide_outer_quotes, align 1
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @abort() #12
  unreachable

sw.epilog:                                        ; preds = %sw.bb35, %if.end34, %if.end21, %sw.bb7, %if.end6
  store i64 0, i64* %i, align 8
  br label %for.cond36

for.cond36:                                       ; preds = %for.inc460, %sw.epilog
  %tmp30 = load i64, i64* %argsize.addr, align 8
  %cmp37 = icmp eq i64 %tmp30, -1
  br i1 %cmp37, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.cond36
  %tmp31 = load i64, i64* %i, align 8
  %tmp32 = load i8*, i8** %arg.addr, align 8
  %arrayidx38 = getelementptr inbounds i8, i8* %tmp32, i64 %tmp31
  %tmp33 = load i8, i8* %arrayidx38, align 1
  %conv = sext i8 %tmp33 to i32
  %cmp39 = icmp eq i32 %conv, 0
  br i1 %cmp39, label %cond.true.for.end462_crit_edge, label %cond.true.for.body43_crit_edge

cond.true.for.body43_crit_edge:                   ; preds = %cond.true
  br label %for.body43

cond.true.for.end462_crit_edge:                   ; preds = %cond.true
  br label %for.end462

cond.false:                                       ; preds = %for.cond36
  %tmp34 = load i64, i64* %i, align 8
  %tmp35 = load i64, i64* %argsize.addr, align 8
  %cmp41 = icmp eq i64 %tmp34, %tmp35
  br i1 %cmp41, label %cond.false.for.end462_crit_edge, label %cond.false.for.body43_crit_edge

cond.false.for.body43_crit_edge:                  ; preds = %cond.false
  br label %for.body43

cond.false.for.end462_crit_edge:                  ; preds = %cond.false
  br label %for.end462

for.body43:                                       ; preds = %cond.false.for.body43_crit_edge, %cond.true.for.body43_crit_edge
  %tmp36 = load i8, i8* %backslash_escapes, align 1
  %tobool44 = trunc i8 %tmp36 to i1
  br i1 %tobool44, label %land.lhs.true, label %for.body43.if.end66_crit_edge

for.body43.if.end66_crit_edge:                    ; preds = %for.body43
  br label %if.end66

land.lhs.true:                                    ; preds = %for.body43
  %tmp37 = load i64, i64* %quote_string_len, align 8
  %tobool46 = icmp ne i64 %tmp37, 0
  br i1 %tobool46, label %land.lhs.true47, label %land.lhs.true.if.end66_crit_edge

land.lhs.true.if.end66_crit_edge:                 ; preds = %land.lhs.true
  br label %if.end66

land.lhs.true47:                                  ; preds = %land.lhs.true
  %tmp38 = load i64, i64* %i, align 8
  %tmp39 = load i64, i64* %quote_string_len, align 8
  %add = add i64 %tmp38, %tmp39
  %tmp40 = load i64, i64* %argsize.addr, align 8
  %cmp48 = icmp ule i64 %add, %tmp40
  br i1 %cmp48, label %land.lhs.true50, label %land.lhs.true47.if.end66_crit_edge

land.lhs.true47.if.end66_crit_edge:               ; preds = %land.lhs.true47
  br label %if.end66

land.lhs.true50:                                  ; preds = %land.lhs.true47
  %tmp41 = load i8*, i8** %arg.addr, align 8
  %tmp42 = load i64, i64* %i, align 8
  %add.ptr = getelementptr inbounds i8, i8* %tmp41, i64 %tmp42
  %tmp43 = load i8*, i8** %quote_string, align 8
  %tmp44 = load i64, i64* %quote_string_len, align 8
  %call51 = call i32 @memcmp(i8* %add.ptr, i8* %tmp43, i64 %tmp44) #13
  %cmp52 = icmp eq i32 %call51, 0
  br i1 %cmp52, label %if.then54, label %land.lhs.true50.if.end66_crit_edge

land.lhs.true50.if.end66_crit_edge:               ; preds = %land.lhs.true50
  br label %if.end66

if.then54:                                        ; preds = %land.lhs.true50
  %tmp45 = load i8, i8* %elide_outer_quotes, align 1
  %tobool55 = trunc i8 %tmp45 to i1
  br i1 %tobool55, label %if.then56, label %if.end57

if.then56:                                        ; preds = %if.then54
  br label %force_outer_quoting_style

if.end57:                                         ; preds = %if.then54
  br label %do.body58

do.body58:                                        ; preds = %if.end57
  %tmp46 = load i64, i64* %len, align 8
  %tmp47 = load i64, i64* %buffersize.addr, align 8
  %cmp59 = icmp ult i64 %tmp46, %tmp47
  br i1 %cmp59, label %if.then61, label %do.body58.if.end63_crit_edge

do.body58.if.end63_crit_edge:                     ; preds = %do.body58
  br label %if.end63

if.then61:                                        ; preds = %do.body58
  %tmp48 = load i64, i64* %len, align 8
  %tmp49 = load i8*, i8** %buffer.addr, align 8
  %arrayidx62 = getelementptr inbounds i8, i8* %tmp49, i64 %tmp48
  store i8 92, i8* %arrayidx62, align 1
  br label %if.end63

if.end63:                                         ; preds = %do.body58.if.end63_crit_edge, %if.then61
  %tmp50 = load i64, i64* %len, align 8
  %inc64 = add i64 %tmp50, 1
  store i64 %inc64, i64* %len, align 8
  br label %do.end65

do.end65:                                         ; preds = %if.end63
  br label %if.end66

if.end66:                                         ; preds = %land.lhs.true50.if.end66_crit_edge, %land.lhs.true47.if.end66_crit_edge, %land.lhs.true.if.end66_crit_edge, %for.body43.if.end66_crit_edge, %do.end65
  %tmp51 = load i64, i64* %i, align 8
  %tmp52 = load i8*, i8** %arg.addr, align 8
  %arrayidx67 = getelementptr inbounds i8, i8* %tmp52, i64 %tmp51
  %tmp53 = load i8, i8* %arrayidx67, align 1
  store i8 %tmp53, i8* %c, align 1
  %tmp54 = load i8, i8* %c, align 1
  %conv68 = zext i8 %tmp54 to i32
  switch i32 %conv68, label %sw.default273 [
    i32 0, label %sw.bb69
    i32 63, label %sw.bb121
    i32 7, label %sw.bb187
    i32 8, label %sw.bb188
    i32 12, label %sw.bb189
    i32 10, label %sw.bb190
    i32 13, label %sw.bb191
    i32 9, label %sw.bb192
    i32 11, label %sw.bb193
    i32 92, label %sw.bb194
    i32 123, label %if.end66.sw.bb214_crit_edge
    i32 125, label %if.end66.sw.bb214_crit_edge272
    i32 35, label %if.end66.sw.bb227_crit_edge
    i32 126, label %if.end66.sw.bb227_crit_edge273
    i32 32, label %if.end66.sw.bb232_crit_edge
    i32 33, label %if.end66.sw.bb232_crit_edge274
    i32 34, label %if.end66.sw.bb232_crit_edge275
    i32 36, label %if.end66.sw.bb232_crit_edge276
    i32 38, label %if.end66.sw.bb232_crit_edge277
    i32 40, label %if.end66.sw.bb232_crit_edge278
    i32 41, label %if.end66.sw.bb232_crit_edge279
    i32 42, label %if.end66.sw.bb232_crit_edge280
    i32 59, label %if.end66.sw.bb232_crit_edge281
    i32 60, label %if.end66.sw.bb232_crit_edge282
    i32 61, label %if.end66.sw.bb232_crit_edge283
    i32 62, label %if.end66.sw.bb232_crit_edge284
    i32 91, label %if.end66.sw.bb232_crit_edge285
    i32 94, label %if.end66.sw.bb232_crit_edge286
    i32 96, label %if.end66.sw.bb232_crit_edge287
    i32 124, label %if.end66.sw.bb232_crit_edge288
    i32 39, label %sw.bb240
    i32 37, label %if.end66.sw.bb272_crit_edge
    i32 43, label %if.end66.sw.bb272_crit_edge289
    i32 44, label %if.end66.sw.bb272_crit_edge290
    i32 45, label %if.end66.sw.bb272_crit_edge291
    i32 46, label %if.end66.sw.bb272_crit_edge292
    i32 47, label %if.end66.sw.bb272_crit_edge293
    i32 48, label %if.end66.sw.bb272_crit_edge294
    i32 49, label %if.end66.sw.bb272_crit_edge295
    i32 50, label %if.end66.sw.bb272_crit_edge296
    i32 51, label %if.end66.sw.bb272_crit_edge297
    i32 52, label %if.end66.sw.bb272_crit_edge298
    i32 53, label %if.end66.sw.bb272_crit_edge299
    i32 54, label %if.end66.sw.bb272_crit_edge300
    i32 55, label %if.end66.sw.bb272_crit_edge301
    i32 56, label %if.end66.sw.bb272_crit_edge302
    i32 57, label %if.end66.sw.bb272_crit_edge303
    i32 58, label %if.end66.sw.bb272_crit_edge304
    i32 65, label %if.end66.sw.bb272_crit_edge305
    i32 66, label %if.end66.sw.bb272_crit_edge306
    i32 67, label %if.end66.sw.bb272_crit_edge307
    i32 68, label %if.end66.sw.bb272_crit_edge308
    i32 69, label %if.end66.sw.bb272_crit_edge309
    i32 70, label %if.end66.sw.bb272_crit_edge310
    i32 71, label %if.end66.sw.bb272_crit_edge311
    i32 72, label %if.end66.sw.bb272_crit_edge312
    i32 73, label %if.end66.sw.bb272_crit_edge313
    i32 74, label %if.end66.sw.bb272_crit_edge314
    i32 75, label %if.end66.sw.bb272_crit_edge315
    i32 76, label %if.end66.sw.bb272_crit_edge316
    i32 77, label %if.end66.sw.bb272_crit_edge317
    i32 78, label %if.end66.sw.bb272_crit_edge318
    i32 79, label %if.end66.sw.bb272_crit_edge319
    i32 80, label %if.end66.sw.bb272_crit_edge320
    i32 81, label %if.end66.sw.bb272_crit_edge321
    i32 82, label %if.end66.sw.bb272_crit_edge322
    i32 83, label %if.end66.sw.bb272_crit_edge323
    i32 84, label %if.end66.sw.bb272_crit_edge324
    i32 85, label %if.end66.sw.bb272_crit_edge325
    i32 86, label %if.end66.sw.bb272_crit_edge326
    i32 87, label %if.end66.sw.bb272_crit_edge327
    i32 88, label %if.end66.sw.bb272_crit_edge328
    i32 89, label %if.end66.sw.bb272_crit_edge329
    i32 90, label %if.end66.sw.bb272_crit_edge330
    i32 93, label %if.end66.sw.bb272_crit_edge331
    i32 95, label %if.end66.sw.bb272_crit_edge332
    i32 97, label %if.end66.sw.bb272_crit_edge333
    i32 98, label %if.end66.sw.bb272_crit_edge334
    i32 99, label %if.end66.sw.bb272_crit_edge335
    i32 100, label %if.end66.sw.bb272_crit_edge336
    i32 101, label %if.end66.sw.bb272_crit_edge337
    i32 102, label %if.end66.sw.bb272_crit_edge338
    i32 103, label %if.end66.sw.bb272_crit_edge339
    i32 104, label %if.end66.sw.bb272_crit_edge340
    i32 105, label %if.end66.sw.bb272_crit_edge341
    i32 106, label %if.end66.sw.bb272_crit_edge342
    i32 107, label %if.end66.sw.bb272_crit_edge343
    i32 108, label %if.end66.sw.bb272_crit_edge344
    i32 109, label %if.end66.sw.bb272_crit_edge345
    i32 110, label %if.end66.sw.bb272_crit_edge346
    i32 111, label %if.end66.sw.bb272_crit_edge347
    i32 112, label %if.end66.sw.bb272_crit_edge348
    i32 113, label %if.end66.sw.bb272_crit_edge349
    i32 114, label %if.end66.sw.bb272_crit_edge350
    i32 115, label %if.end66.sw.bb272_crit_edge351
    i32 116, label %if.end66.sw.bb272_crit_edge352
    i32 117, label %if.end66.sw.bb272_crit_edge353
    i32 118, label %if.end66.sw.bb272_crit_edge354
    i32 119, label %if.end66.sw.bb272_crit_edge355
    i32 120, label %if.end66.sw.bb272_crit_edge356
    i32 121, label %if.end66.sw.bb272_crit_edge357
    i32 122, label %if.end66.sw.bb272_crit_edge358
  ]

if.end66.sw.bb272_crit_edge358:                   ; preds = %if.end66
  br label %sw.bb272

if.end66.sw.bb272_crit_edge357:                   ; preds = %if.end66
  br label %sw.bb272

if.end66.sw.bb272_crit_edge356:                   ; preds = %if.end66
  br label %sw.bb272

if.end66.sw.bb272_crit_edge355:                   ; preds = %if.end66
  br label %sw.bb272

if.end66.sw.bb272_crit_edge354:                   ; preds = %if.end66
  br label %sw.bb272

if.end66.sw.bb272_crit_edge353:                   ; preds = %if.end66
  br label %sw.bb272

if.end66.sw.bb272_crit_edge352:                   ; preds = %if.end66
  br label %sw.bb272

if.end66.sw.bb272_crit_edge351:                   ; preds = %if.end66
  br label %sw.bb272

if.end66.sw.bb272_crit_edge350:                   ; preds = %if.end66
  br label %sw.bb272

if.end66.sw.bb272_crit_edge349:                   ; preds = %if.end66
  br label %sw.bb272

if.end66.sw.bb272_crit_edge348:                   ; preds = %if.end66
  br label %sw.bb272

if.end66.sw.bb272_crit_edge347:                   ; preds = %if.end66
  br label %sw.bb272

if.end66.sw.bb272_crit_edge346:                   ; preds = %if.end66
  br label %sw.bb272

if.end66.sw.bb272_crit_edge345:                   ; preds = %if.end66
  br label %sw.bb272

if.end66.sw.bb272_crit_edge344:                   ; preds = %if.end66
  br label %sw.bb272

if.end66.sw.bb272_crit_edge343:                   ; preds = %if.end66
  br label %sw.bb272

if.end66.sw.bb272_crit_edge342:                   ; preds = %if.end66
  br label %sw.bb272

if.end66.sw.bb272_crit_edge341:                   ; preds = %if.end66
  br label %sw.bb272

if.end66.sw.bb272_crit_edge340:                   ; preds = %if.end66
  br label %sw.bb272

if.end66.sw.bb272_crit_edge339:                   ; preds = %if.end66
  br label %sw.bb272

if.end66.sw.bb272_crit_edge338:                   ; preds = %if.end66
  br label %sw.bb272

if.end66.sw.bb272_crit_edge337:                   ; preds = %if.end66
  br label %sw.bb272

if.end66.sw.bb272_crit_edge336:                   ; preds = %if.end66
  br label %sw.bb272

if.end66.sw.bb272_crit_edge335:                   ; preds = %if.end66
  br label %sw.bb272

if.end66.sw.bb272_crit_edge334:                   ; preds = %if.end66
  br label %sw.bb272

if.end66.sw.bb272_crit_edge333:                   ; preds = %if.end66
  br label %sw.bb272

if.end66.sw.bb272_crit_edge332:                   ; preds = %if.end66
  br label %sw.bb272

if.end66.sw.bb272_crit_edge331:                   ; preds = %if.end66
  br label %sw.bb272

if.end66.sw.bb272_crit_edge330:                   ; preds = %if.end66
  br label %sw.bb272

if.end66.sw.bb272_crit_edge329:                   ; preds = %if.end66
  br label %sw.bb272

if.end66.sw.bb272_crit_edge328:                   ; preds = %if.end66
  br label %sw.bb272

if.end66.sw.bb272_crit_edge327:                   ; preds = %if.end66
  br label %sw.bb272

if.end66.sw.bb272_crit_edge326:                   ; preds = %if.end66
  br label %sw.bb272

if.end66.sw.bb272_crit_edge325:                   ; preds = %if.end66
  br label %sw.bb272

if.end66.sw.bb272_crit_edge324:                   ; preds = %if.end66
  br label %sw.bb272

if.end66.sw.bb272_crit_edge323:                   ; preds = %if.end66
  br label %sw.bb272

if.end66.sw.bb272_crit_edge322:                   ; preds = %if.end66
  br label %sw.bb272

if.end66.sw.bb272_crit_edge321:                   ; preds = %if.end66
  br label %sw.bb272

if.end66.sw.bb272_crit_edge320:                   ; preds = %if.end66
  br label %sw.bb272

if.end66.sw.bb272_crit_edge319:                   ; preds = %if.end66
  br label %sw.bb272

if.end66.sw.bb272_crit_edge318:                   ; preds = %if.end66
  br label %sw.bb272

if.end66.sw.bb272_crit_edge317:                   ; preds = %if.end66
  br label %sw.bb272

if.end66.sw.bb272_crit_edge316:                   ; preds = %if.end66
  br label %sw.bb272

if.end66.sw.bb272_crit_edge315:                   ; preds = %if.end66
  br label %sw.bb272

if.end66.sw.bb272_crit_edge314:                   ; preds = %if.end66
  br label %sw.bb272

if.end66.sw.bb272_crit_edge313:                   ; preds = %if.end66
  br label %sw.bb272

if.end66.sw.bb272_crit_edge312:                   ; preds = %if.end66
  br label %sw.bb272

if.end66.sw.bb272_crit_edge311:                   ; preds = %if.end66
  br label %sw.bb272

if.end66.sw.bb272_crit_edge310:                   ; preds = %if.end66
  br label %sw.bb272

if.end66.sw.bb272_crit_edge309:                   ; preds = %if.end66
  br label %sw.bb272

if.end66.sw.bb272_crit_edge308:                   ; preds = %if.end66
  br label %sw.bb272

if.end66.sw.bb272_crit_edge307:                   ; preds = %if.end66
  br label %sw.bb272

if.end66.sw.bb272_crit_edge306:                   ; preds = %if.end66
  br label %sw.bb272

if.end66.sw.bb272_crit_edge305:                   ; preds = %if.end66
  br label %sw.bb272

if.end66.sw.bb272_crit_edge304:                   ; preds = %if.end66
  br label %sw.bb272

if.end66.sw.bb272_crit_edge303:                   ; preds = %if.end66
  br label %sw.bb272

if.end66.sw.bb272_crit_edge302:                   ; preds = %if.end66
  br label %sw.bb272

if.end66.sw.bb272_crit_edge301:                   ; preds = %if.end66
  br label %sw.bb272

if.end66.sw.bb272_crit_edge300:                   ; preds = %if.end66
  br label %sw.bb272

if.end66.sw.bb272_crit_edge299:                   ; preds = %if.end66
  br label %sw.bb272

if.end66.sw.bb272_crit_edge298:                   ; preds = %if.end66
  br label %sw.bb272

if.end66.sw.bb272_crit_edge297:                   ; preds = %if.end66
  br label %sw.bb272

if.end66.sw.bb272_crit_edge296:                   ; preds = %if.end66
  br label %sw.bb272

if.end66.sw.bb272_crit_edge295:                   ; preds = %if.end66
  br label %sw.bb272

if.end66.sw.bb272_crit_edge294:                   ; preds = %if.end66
  br label %sw.bb272

if.end66.sw.bb272_crit_edge293:                   ; preds = %if.end66
  br label %sw.bb272

if.end66.sw.bb272_crit_edge292:                   ; preds = %if.end66
  br label %sw.bb272

if.end66.sw.bb272_crit_edge291:                   ; preds = %if.end66
  br label %sw.bb272

if.end66.sw.bb272_crit_edge290:                   ; preds = %if.end66
  br label %sw.bb272

if.end66.sw.bb272_crit_edge289:                   ; preds = %if.end66
  br label %sw.bb272

if.end66.sw.bb272_crit_edge:                      ; preds = %if.end66
  br label %sw.bb272

if.end66.sw.bb232_crit_edge288:                   ; preds = %if.end66
  br label %sw.bb232

if.end66.sw.bb232_crit_edge287:                   ; preds = %if.end66
  br label %sw.bb232

if.end66.sw.bb232_crit_edge286:                   ; preds = %if.end66
  br label %sw.bb232

if.end66.sw.bb232_crit_edge285:                   ; preds = %if.end66
  br label %sw.bb232

if.end66.sw.bb232_crit_edge284:                   ; preds = %if.end66
  br label %sw.bb232

if.end66.sw.bb232_crit_edge283:                   ; preds = %if.end66
  br label %sw.bb232

if.end66.sw.bb232_crit_edge282:                   ; preds = %if.end66
  br label %sw.bb232

if.end66.sw.bb232_crit_edge281:                   ; preds = %if.end66
  br label %sw.bb232

if.end66.sw.bb232_crit_edge280:                   ; preds = %if.end66
  br label %sw.bb232

if.end66.sw.bb232_crit_edge279:                   ; preds = %if.end66
  br label %sw.bb232

if.end66.sw.bb232_crit_edge278:                   ; preds = %if.end66
  br label %sw.bb232

if.end66.sw.bb232_crit_edge277:                   ; preds = %if.end66
  br label %sw.bb232

if.end66.sw.bb232_crit_edge276:                   ; preds = %if.end66
  br label %sw.bb232

if.end66.sw.bb232_crit_edge275:                   ; preds = %if.end66
  br label %sw.bb232

if.end66.sw.bb232_crit_edge274:                   ; preds = %if.end66
  br label %sw.bb232

if.end66.sw.bb232_crit_edge:                      ; preds = %if.end66
  br label %sw.bb232

if.end66.sw.bb227_crit_edge273:                   ; preds = %if.end66
  br label %sw.bb227

if.end66.sw.bb227_crit_edge:                      ; preds = %if.end66
  br label %sw.bb227

if.end66.sw.bb214_crit_edge272:                   ; preds = %if.end66
  br label %sw.bb214

if.end66.sw.bb214_crit_edge:                      ; preds = %if.end66
  br label %sw.bb214

sw.bb69:                                          ; preds = %if.end66
  %tmp55 = load i8, i8* %backslash_escapes, align 1
  %tobool70 = trunc i8 %tmp55 to i1
  br i1 %tobool70, label %if.then71, label %if.else

if.then71:                                        ; preds = %sw.bb69
  %tmp56 = load i8, i8* %elide_outer_quotes, align 1
  %tobool72 = trunc i8 %tmp56 to i1
  br i1 %tobool72, label %if.then73, label %if.end74

if.then73:                                        ; preds = %if.then71
  br label %force_outer_quoting_style

if.end74:                                         ; preds = %if.then71
  br label %do.body75

do.body75:                                        ; preds = %if.end74
  %tmp57 = load i64, i64* %len, align 8
  %tmp58 = load i64, i64* %buffersize.addr, align 8
  %cmp76 = icmp ult i64 %tmp57, %tmp58
  br i1 %cmp76, label %if.then78, label %do.body75.if.end80_crit_edge

do.body75.if.end80_crit_edge:                     ; preds = %do.body75
  br label %if.end80

if.then78:                                        ; preds = %do.body75
  %tmp59 = load i64, i64* %len, align 8
  %tmp60 = load i8*, i8** %buffer.addr, align 8
  %arrayidx79 = getelementptr inbounds i8, i8* %tmp60, i64 %tmp59
  store i8 92, i8* %arrayidx79, align 1
  br label %if.end80

if.end80:                                         ; preds = %do.body75.if.end80_crit_edge, %if.then78
  %tmp61 = load i64, i64* %len, align 8
  %inc81 = add i64 %tmp61, 1
  store i64 %inc81, i64* %len, align 8
  br label %do.end82

do.end82:                                         ; preds = %if.end80
  %tmp62 = load i64, i64* %i, align 8
  %add83 = add i64 %tmp62, 1
  %tmp63 = load i64, i64* %argsize.addr, align 8
  %cmp84 = icmp ult i64 %add83, %tmp63
  br i1 %cmp84, label %land.lhs.true86, label %do.end82.if.end115_crit_edge

do.end82.if.end115_crit_edge:                     ; preds = %do.end82
  br label %if.end115

land.lhs.true86:                                  ; preds = %do.end82
  %tmp64 = load i64, i64* %i, align 8
  %add87 = add i64 %tmp64, 1
  %tmp65 = load i8*, i8** %arg.addr, align 8
  %arrayidx88 = getelementptr inbounds i8, i8* %tmp65, i64 %add87
  %tmp66 = load i8, i8* %arrayidx88, align 1
  %conv89 = sext i8 %tmp66 to i32
  %cmp90 = icmp sle i32 48, %conv89
  br i1 %cmp90, label %land.lhs.true92, label %land.lhs.true86.if.end115_crit_edge

land.lhs.true86.if.end115_crit_edge:              ; preds = %land.lhs.true86
  br label %if.end115

land.lhs.true92:                                  ; preds = %land.lhs.true86
  %tmp67 = load i64, i64* %i, align 8
  %add93 = add i64 %tmp67, 1
  %tmp68 = load i8*, i8** %arg.addr, align 8
  %arrayidx94 = getelementptr inbounds i8, i8* %tmp68, i64 %add93
  %tmp69 = load i8, i8* %arrayidx94, align 1
  %conv95 = sext i8 %tmp69 to i32
  %cmp96 = icmp sle i32 %conv95, 57
  br i1 %cmp96, label %if.then98, label %land.lhs.true92.if.end115_crit_edge

land.lhs.true92.if.end115_crit_edge:              ; preds = %land.lhs.true92
  br label %if.end115

if.then98:                                        ; preds = %land.lhs.true92
  br label %do.body99

do.body99:                                        ; preds = %if.then98
  %tmp70 = load i64, i64* %len, align 8
  %tmp71 = load i64, i64* %buffersize.addr, align 8
  %cmp100 = icmp ult i64 %tmp70, %tmp71
  br i1 %cmp100, label %if.then102, label %do.body99.if.end104_crit_edge

do.body99.if.end104_crit_edge:                    ; preds = %do.body99
  br label %if.end104

if.then102:                                       ; preds = %do.body99
  %tmp72 = load i64, i64* %len, align 8
  %tmp73 = load i8*, i8** %buffer.addr, align 8
  %arrayidx103 = getelementptr inbounds i8, i8* %tmp73, i64 %tmp72
  store i8 48, i8* %arrayidx103, align 1
  br label %if.end104

if.end104:                                        ; preds = %do.body99.if.end104_crit_edge, %if.then102
  %tmp74 = load i64, i64* %len, align 8
  %inc105 = add i64 %tmp74, 1
  store i64 %inc105, i64* %len, align 8
  br label %do.end106

do.end106:                                        ; preds = %if.end104
  br label %do.body107

do.body107:                                       ; preds = %do.end106
  %tmp75 = load i64, i64* %len, align 8
  %tmp76 = load i64, i64* %buffersize.addr, align 8
  %cmp108 = icmp ult i64 %tmp75, %tmp76
  br i1 %cmp108, label %if.then110, label %do.body107.if.end112_crit_edge

do.body107.if.end112_crit_edge:                   ; preds = %do.body107
  br label %if.end112

if.then110:                                       ; preds = %do.body107
  %tmp77 = load i64, i64* %len, align 8
  %tmp78 = load i8*, i8** %buffer.addr, align 8
  %arrayidx111 = getelementptr inbounds i8, i8* %tmp78, i64 %tmp77
  store i8 48, i8* %arrayidx111, align 1
  br label %if.end112

if.end112:                                        ; preds = %do.body107.if.end112_crit_edge, %if.then110
  %tmp79 = load i64, i64* %len, align 8
  %inc113 = add i64 %tmp79, 1
  store i64 %inc113, i64* %len, align 8
  br label %do.end114

do.end114:                                        ; preds = %if.end112
  br label %if.end115

if.end115:                                        ; preds = %land.lhs.true92.if.end115_crit_edge, %land.lhs.true86.if.end115_crit_edge, %do.end82.if.end115_crit_edge, %do.end114
  store i8 48, i8* %c, align 1
  br label %if.end120

if.else:                                          ; preds = %sw.bb69
  %tmp80 = load i32, i32* %flags.addr, align 4
  %and116 = and i32 %tmp80, 1
  %tobool117 = icmp ne i32 %and116, 0
  br i1 %tobool117, label %if.then118, label %if.end119

if.then118:                                       ; preds = %if.else
  br label %for.inc460

if.end119:                                        ; preds = %if.else
  br label %if.end120

if.end120:                                        ; preds = %if.end119, %if.end115
  br label %sw.epilog423

sw.bb121:                                         ; preds = %if.end66
  %tmp81 = load i32, i32* %quoting_style.addr, align 4
  switch i32 %tmp81, label %sw.default185 [
    i32 2, label %sw.bb122
    i32 3, label %sw.bb126
  ]

sw.bb122:                                         ; preds = %sw.bb121
  %tmp82 = load i8, i8* %elide_outer_quotes, align 1
  %tobool123 = trunc i8 %tmp82 to i1
  br i1 %tobool123, label %if.then124, label %if.end125

if.then124:                                       ; preds = %sw.bb122
  br label %force_outer_quoting_style

if.end125:                                        ; preds = %sw.bb122
  br label %sw.epilog186

sw.bb126:                                         ; preds = %sw.bb121
  %tmp83 = load i32, i32* %flags.addr, align 4
  %and127 = and i32 %tmp83, 4
  %tobool128 = icmp ne i32 %and127, 0
  br i1 %tobool128, label %land.lhs.true129, label %sw.bb126.if.end184_crit_edge

sw.bb126.if.end184_crit_edge:                     ; preds = %sw.bb126
  br label %if.end184

land.lhs.true129:                                 ; preds = %sw.bb126
  %tmp84 = load i64, i64* %i, align 8
  %add130 = add i64 %tmp84, 2
  %tmp85 = load i64, i64* %argsize.addr, align 8
  %cmp131 = icmp ult i64 %add130, %tmp85
  br i1 %cmp131, label %land.lhs.true133, label %land.lhs.true129.if.end184_crit_edge

land.lhs.true129.if.end184_crit_edge:             ; preds = %land.lhs.true129
  br label %if.end184

land.lhs.true133:                                 ; preds = %land.lhs.true129
  %tmp86 = load i64, i64* %i, align 8
  %add134 = add i64 %tmp86, 1
  %tmp87 = load i8*, i8** %arg.addr, align 8
  %arrayidx135 = getelementptr inbounds i8, i8* %tmp87, i64 %add134
  %tmp88 = load i8, i8* %arrayidx135, align 1
  %conv136 = sext i8 %tmp88 to i32
  %cmp137 = icmp eq i32 %conv136, 63
  br i1 %cmp137, label %if.then139, label %land.lhs.true133.if.end184_crit_edge

land.lhs.true133.if.end184_crit_edge:             ; preds = %land.lhs.true133
  br label %if.end184

if.then139:                                       ; preds = %land.lhs.true133
  %tmp89 = load i64, i64* %i, align 8
  %add140 = add i64 %tmp89, 2
  %tmp90 = load i8*, i8** %arg.addr, align 8
  %arrayidx141 = getelementptr inbounds i8, i8* %tmp90, i64 %add140
  %tmp91 = load i8, i8* %arrayidx141, align 1
  %conv142 = sext i8 %tmp91 to i32
  switch i32 %conv142, label %sw.default182 [
    i32 33, label %if.then139.sw.bb143_crit_edge
    i32 39, label %if.then139.sw.bb143_crit_edge359
    i32 40, label %if.then139.sw.bb143_crit_edge360
    i32 41, label %if.then139.sw.bb143_crit_edge361
    i32 45, label %if.then139.sw.bb143_crit_edge362
    i32 47, label %if.then139.sw.bb143_crit_edge363
    i32 60, label %if.then139.sw.bb143_crit_edge364
    i32 61, label %if.then139.sw.bb143_crit_edge365
    i32 62, label %if.then139.sw.bb143_crit_edge366
  ]

if.then139.sw.bb143_crit_edge366:                 ; preds = %if.then139
  br label %sw.bb143

if.then139.sw.bb143_crit_edge365:                 ; preds = %if.then139
  br label %sw.bb143

if.then139.sw.bb143_crit_edge364:                 ; preds = %if.then139
  br label %sw.bb143

if.then139.sw.bb143_crit_edge363:                 ; preds = %if.then139
  br label %sw.bb143

if.then139.sw.bb143_crit_edge362:                 ; preds = %if.then139
  br label %sw.bb143

if.then139.sw.bb143_crit_edge361:                 ; preds = %if.then139
  br label %sw.bb143

if.then139.sw.bb143_crit_edge360:                 ; preds = %if.then139
  br label %sw.bb143

if.then139.sw.bb143_crit_edge359:                 ; preds = %if.then139
  br label %sw.bb143

if.then139.sw.bb143_crit_edge:                    ; preds = %if.then139
  br label %sw.bb143

sw.bb143:                                         ; preds = %if.then139.sw.bb143_crit_edge366, %if.then139.sw.bb143_crit_edge365, %if.then139.sw.bb143_crit_edge364, %if.then139.sw.bb143_crit_edge363, %if.then139.sw.bb143_crit_edge362, %if.then139.sw.bb143_crit_edge361, %if.then139.sw.bb143_crit_edge360, %if.then139.sw.bb143_crit_edge359, %if.then139.sw.bb143_crit_edge
  %tmp92 = load i8, i8* %elide_outer_quotes, align 1
  %tobool144 = trunc i8 %tmp92 to i1
  br i1 %tobool144, label %if.then145, label %if.end146

if.then145:                                       ; preds = %sw.bb143
  br label %force_outer_quoting_style

if.end146:                                        ; preds = %sw.bb143
  %tmp93 = load i64, i64* %i, align 8
  %add147 = add i64 %tmp93, 2
  %tmp94 = load i8*, i8** %arg.addr, align 8
  %arrayidx148 = getelementptr inbounds i8, i8* %tmp94, i64 %add147
  %tmp95 = load i8, i8* %arrayidx148, align 1
  store i8 %tmp95, i8* %c, align 1
  %tmp96 = load i64, i64* %i, align 8
  %add149 = add i64 %tmp96, 2
  store i64 %add149, i64* %i, align 8
  br label %do.body150

do.body150:                                       ; preds = %if.end146
  %tmp97 = load i64, i64* %len, align 8
  %tmp98 = load i64, i64* %buffersize.addr, align 8
  %cmp151 = icmp ult i64 %tmp97, %tmp98
  br i1 %cmp151, label %if.then153, label %do.body150.if.end155_crit_edge

do.body150.if.end155_crit_edge:                   ; preds = %do.body150
  br label %if.end155

if.then153:                                       ; preds = %do.body150
  %tmp99 = load i64, i64* %len, align 8
  %tmp100 = load i8*, i8** %buffer.addr, align 8
  %arrayidx154 = getelementptr inbounds i8, i8* %tmp100, i64 %tmp99
  store i8 63, i8* %arrayidx154, align 1
  br label %if.end155

if.end155:                                        ; preds = %do.body150.if.end155_crit_edge, %if.then153
  %tmp101 = load i64, i64* %len, align 8
  %inc156 = add i64 %tmp101, 1
  store i64 %inc156, i64* %len, align 8
  br label %do.end157

do.end157:                                        ; preds = %if.end155
  br label %do.body158

do.body158:                                       ; preds = %do.end157
  %tmp102 = load i64, i64* %len, align 8
  %tmp103 = load i64, i64* %buffersize.addr, align 8
  %cmp159 = icmp ult i64 %tmp102, %tmp103
  br i1 %cmp159, label %if.then161, label %do.body158.if.end163_crit_edge

do.body158.if.end163_crit_edge:                   ; preds = %do.body158
  br label %if.end163

if.then161:                                       ; preds = %do.body158
  %tmp104 = load i64, i64* %len, align 8
  %tmp105 = load i8*, i8** %buffer.addr, align 8
  %arrayidx162 = getelementptr inbounds i8, i8* %tmp105, i64 %tmp104
  store i8 34, i8* %arrayidx162, align 1
  br label %if.end163

if.end163:                                        ; preds = %do.body158.if.end163_crit_edge, %if.then161
  %tmp106 = load i64, i64* %len, align 8
  %inc164 = add i64 %tmp106, 1
  store i64 %inc164, i64* %len, align 8
  br label %do.end165

do.end165:                                        ; preds = %if.end163
  br label %do.body166

do.body166:                                       ; preds = %do.end165
  %tmp107 = load i64, i64* %len, align 8
  %tmp108 = load i64, i64* %buffersize.addr, align 8
  %cmp167 = icmp ult i64 %tmp107, %tmp108
  br i1 %cmp167, label %if.then169, label %do.body166.if.end171_crit_edge

do.body166.if.end171_crit_edge:                   ; preds = %do.body166
  br label %if.end171

if.then169:                                       ; preds = %do.body166
  %tmp109 = load i64, i64* %len, align 8
  %tmp110 = load i8*, i8** %buffer.addr, align 8
  %arrayidx170 = getelementptr inbounds i8, i8* %tmp110, i64 %tmp109
  store i8 34, i8* %arrayidx170, align 1
  br label %if.end171

if.end171:                                        ; preds = %do.body166.if.end171_crit_edge, %if.then169
  %tmp111 = load i64, i64* %len, align 8
  %inc172 = add i64 %tmp111, 1
  store i64 %inc172, i64* %len, align 8
  br label %do.end173

do.end173:                                        ; preds = %if.end171
  br label %do.body174

do.body174:                                       ; preds = %do.end173
  %tmp112 = load i64, i64* %len, align 8
  %tmp113 = load i64, i64* %buffersize.addr, align 8
  %cmp175 = icmp ult i64 %tmp112, %tmp113
  br i1 %cmp175, label %if.then177, label %do.body174.if.end179_crit_edge

do.body174.if.end179_crit_edge:                   ; preds = %do.body174
  br label %if.end179

if.then177:                                       ; preds = %do.body174
  %tmp114 = load i64, i64* %len, align 8
  %tmp115 = load i8*, i8** %buffer.addr, align 8
  %arrayidx178 = getelementptr inbounds i8, i8* %tmp115, i64 %tmp114
  store i8 63, i8* %arrayidx178, align 1
  br label %if.end179

if.end179:                                        ; preds = %do.body174.if.end179_crit_edge, %if.then177
  %tmp116 = load i64, i64* %len, align 8
  %inc180 = add i64 %tmp116, 1
  store i64 %inc180, i64* %len, align 8
  br label %do.end181

do.end181:                                        ; preds = %if.end179
  br label %sw.epilog183

sw.default182:                                    ; preds = %if.then139
  br label %sw.epilog183

sw.epilog183:                                     ; preds = %sw.default182, %do.end181
  br label %if.end184

if.end184:                                        ; preds = %land.lhs.true133.if.end184_crit_edge, %land.lhs.true129.if.end184_crit_edge, %sw.bb126.if.end184_crit_edge, %sw.epilog183
  br label %sw.epilog186

sw.default185:                                    ; preds = %sw.bb121
  br label %sw.epilog186

sw.epilog186:                                     ; preds = %sw.default185, %if.end184, %if.end125
  br label %sw.epilog423

sw.bb187:                                         ; preds = %if.end66
  store i8 97, i8* %esc, align 1
  br label %c_escape

sw.bb188:                                         ; preds = %if.end66
  store i8 98, i8* %esc, align 1
  br label %c_escape

sw.bb189:                                         ; preds = %if.end66
  store i8 102, i8* %esc, align 1
  br label %c_escape

sw.bb190:                                         ; preds = %if.end66
  store i8 110, i8* %esc, align 1
  br label %c_and_shell_escape

sw.bb191:                                         ; preds = %if.end66
  store i8 114, i8* %esc, align 1
  br label %c_and_shell_escape

sw.bb192:                                         ; preds = %if.end66
  store i8 116, i8* %esc, align 1
  br label %c_and_shell_escape

sw.bb193:                                         ; preds = %if.end66
  store i8 118, i8* %esc, align 1
  br label %c_escape

sw.bb194:                                         ; preds = %if.end66
  %tmp117 = load i8, i8* %c, align 1
  store i8 %tmp117, i8* %esc, align 1
  %tmp118 = load i8, i8* %backslash_escapes, align 1
  %tobool195 = trunc i8 %tmp118 to i1
  br i1 %tobool195, label %land.lhs.true197, label %sw.bb194.if.end203_crit_edge

sw.bb194.if.end203_crit_edge:                     ; preds = %sw.bb194
  br label %if.end203

land.lhs.true197:                                 ; preds = %sw.bb194
  %tmp119 = load i8, i8* %elide_outer_quotes, align 1
  %tobool198 = trunc i8 %tmp119 to i1
  br i1 %tobool198, label %land.lhs.true200, label %land.lhs.true197.if.end203_crit_edge

land.lhs.true197.if.end203_crit_edge:             ; preds = %land.lhs.true197
  br label %if.end203

land.lhs.true200:                                 ; preds = %land.lhs.true197
  %tmp120 = load i64, i64* %quote_string_len, align 8
  %tobool201 = icmp ne i64 %tmp120, 0
  br i1 %tobool201, label %if.then202, label %land.lhs.true200.if.end203_crit_edge

land.lhs.true200.if.end203_crit_edge:             ; preds = %land.lhs.true200
  br label %if.end203

if.then202:                                       ; preds = %land.lhs.true200
  br label %store_c

if.end203:                                        ; preds = %land.lhs.true200.if.end203_crit_edge, %land.lhs.true197.if.end203_crit_edge, %sw.bb194.if.end203_crit_edge
  br label %c_and_shell_escape

c_and_shell_escape:                               ; preds = %if.end203, %sw.bb192, %sw.bb191, %sw.bb190
  %tmp121 = load i32, i32* %quoting_style.addr, align 4
  %cmp204 = icmp eq i32 %tmp121, 2
  br i1 %cmp204, label %land.lhs.true206, label %c_and_shell_escape.if.end210_crit_edge

c_and_shell_escape.if.end210_crit_edge:           ; preds = %c_and_shell_escape
  br label %if.end210

land.lhs.true206:                                 ; preds = %c_and_shell_escape
  %tmp122 = load i8, i8* %elide_outer_quotes, align 1
  %tobool207 = trunc i8 %tmp122 to i1
  br i1 %tobool207, label %if.then209, label %land.lhs.true206.if.end210_crit_edge

land.lhs.true206.if.end210_crit_edge:             ; preds = %land.lhs.true206
  br label %if.end210

if.then209:                                       ; preds = %land.lhs.true206
  br label %force_outer_quoting_style

if.end210:                                        ; preds = %land.lhs.true206.if.end210_crit_edge, %c_and_shell_escape.if.end210_crit_edge
  br label %c_escape

c_escape:                                         ; preds = %if.end210, %sw.bb193, %sw.bb189, %sw.bb188, %sw.bb187
  %tmp123 = load i8, i8* %backslash_escapes, align 1
  %tobool211 = trunc i8 %tmp123 to i1
  br i1 %tobool211, label %if.then212, label %if.end213

if.then212:                                       ; preds = %c_escape
  %tmp124 = load i8, i8* %esc, align 1
  store i8 %tmp124, i8* %c, align 1
  br label %store_escape

if.end213:                                        ; preds = %c_escape
  br label %sw.epilog423

sw.bb214:                                         ; preds = %if.end66.sw.bb214_crit_edge272, %if.end66.sw.bb214_crit_edge
  %tmp125 = load i64, i64* %argsize.addr, align 8
  %cmp215 = icmp eq i64 %tmp125, -1
  br i1 %cmp215, label %cond.true217, label %cond.false222

cond.true217:                                     ; preds = %sw.bb214
  %tmp126 = load i8*, i8** %arg.addr, align 8
  %arrayidx218 = getelementptr inbounds i8, i8* %tmp126, i64 1
  %tmp127 = load i8, i8* %arrayidx218, align 1
  %conv219 = sext i8 %tmp127 to i32
  %cmp220 = icmp eq i32 %conv219, 0
  br i1 %cmp220, label %cond.true217.if.end226_crit_edge, label %cond.true217.if.then225_crit_edge

cond.true217.if.then225_crit_edge:                ; preds = %cond.true217
  br label %if.then225

cond.true217.if.end226_crit_edge:                 ; preds = %cond.true217
  br label %if.end226

cond.false222:                                    ; preds = %sw.bb214
  %tmp128 = load i64, i64* %argsize.addr, align 8
  %cmp223 = icmp eq i64 %tmp128, 1
  br i1 %cmp223, label %cond.false222.if.end226_crit_edge, label %cond.false222.if.then225_crit_edge

cond.false222.if.then225_crit_edge:               ; preds = %cond.false222
  br label %if.then225

cond.false222.if.end226_crit_edge:                ; preds = %cond.false222
  br label %if.end226

if.then225:                                       ; preds = %cond.false222.if.then225_crit_edge, %cond.true217.if.then225_crit_edge
  br label %sw.epilog423

if.end226:                                        ; preds = %cond.false222.if.end226_crit_edge, %cond.true217.if.end226_crit_edge
  br label %sw.bb227

sw.bb227:                                         ; preds = %if.end66.sw.bb227_crit_edge273, %if.end66.sw.bb227_crit_edge, %if.end226
  %tmp129 = load i64, i64* %i, align 8
  %cmp228 = icmp ne i64 %tmp129, 0
  br i1 %cmp228, label %if.then230, label %if.end231

if.then230:                                       ; preds = %sw.bb227
  br label %sw.epilog423

if.end231:                                        ; preds = %sw.bb227
  br label %sw.bb232

sw.bb232:                                         ; preds = %if.end66.sw.bb232_crit_edge288, %if.end66.sw.bb232_crit_edge287, %if.end66.sw.bb232_crit_edge286, %if.end66.sw.bb232_crit_edge285, %if.end66.sw.bb232_crit_edge284, %if.end66.sw.bb232_crit_edge283, %if.end66.sw.bb232_crit_edge282, %if.end66.sw.bb232_crit_edge281, %if.end66.sw.bb232_crit_edge280, %if.end66.sw.bb232_crit_edge279, %if.end66.sw.bb232_crit_edge278, %if.end66.sw.bb232_crit_edge277, %if.end66.sw.bb232_crit_edge276, %if.end66.sw.bb232_crit_edge275, %if.end66.sw.bb232_crit_edge274, %if.end66.sw.bb232_crit_edge, %if.end231
  %tmp130 = load i32, i32* %quoting_style.addr, align 4
  %cmp233 = icmp eq i32 %tmp130, 2
  br i1 %cmp233, label %land.lhs.true235, label %sw.bb232.if.end239_crit_edge

sw.bb232.if.end239_crit_edge:                     ; preds = %sw.bb232
  br label %if.end239

land.lhs.true235:                                 ; preds = %sw.bb232
  %tmp131 = load i8, i8* %elide_outer_quotes, align 1
  %tobool236 = trunc i8 %tmp131 to i1
  br i1 %tobool236, label %if.then238, label %land.lhs.true235.if.end239_crit_edge

land.lhs.true235.if.end239_crit_edge:             ; preds = %land.lhs.true235
  br label %if.end239

if.then238:                                       ; preds = %land.lhs.true235
  br label %force_outer_quoting_style

if.end239:                                        ; preds = %land.lhs.true235.if.end239_crit_edge, %sw.bb232.if.end239_crit_edge
  br label %sw.epilog423

sw.bb240:                                         ; preds = %if.end66
  %tmp132 = load i32, i32* %quoting_style.addr, align 4
  %cmp241 = icmp eq i32 %tmp132, 2
  br i1 %cmp241, label %if.then243, label %sw.bb240.if.end271_crit_edge

sw.bb240.if.end271_crit_edge:                     ; preds = %sw.bb240
  br label %if.end271

if.then243:                                       ; preds = %sw.bb240
  %tmp133 = load i8, i8* %elide_outer_quotes, align 1
  %tobool244 = trunc i8 %tmp133 to i1
  br i1 %tobool244, label %if.then245, label %if.end246

if.then245:                                       ; preds = %if.then243
  br label %force_outer_quoting_style

if.end246:                                        ; preds = %if.then243
  br label %do.body247

do.body247:                                       ; preds = %if.end246
  %tmp134 = load i64, i64* %len, align 8
  %tmp135 = load i64, i64* %buffersize.addr, align 8
  %cmp248 = icmp ult i64 %tmp134, %tmp135
  br i1 %cmp248, label %if.then250, label %do.body247.if.end252_crit_edge

do.body247.if.end252_crit_edge:                   ; preds = %do.body247
  br label %if.end252

if.then250:                                       ; preds = %do.body247
  %tmp136 = load i64, i64* %len, align 8
  %tmp137 = load i8*, i8** %buffer.addr, align 8
  %arrayidx251 = getelementptr inbounds i8, i8* %tmp137, i64 %tmp136
  store i8 39, i8* %arrayidx251, align 1
  br label %if.end252

if.end252:                                        ; preds = %do.body247.if.end252_crit_edge, %if.then250
  %tmp138 = load i64, i64* %len, align 8
  %inc253 = add i64 %tmp138, 1
  store i64 %inc253, i64* %len, align 8
  br label %do.end254

do.end254:                                        ; preds = %if.end252
  br label %do.body255

do.body255:                                       ; preds = %do.end254
  %tmp139 = load i64, i64* %len, align 8
  %tmp140 = load i64, i64* %buffersize.addr, align 8
  %cmp256 = icmp ult i64 %tmp139, %tmp140
  br i1 %cmp256, label %if.then258, label %do.body255.if.end260_crit_edge

do.body255.if.end260_crit_edge:                   ; preds = %do.body255
  br label %if.end260

if.then258:                                       ; preds = %do.body255
  %tmp141 = load i64, i64* %len, align 8
  %tmp142 = load i8*, i8** %buffer.addr, align 8
  %arrayidx259 = getelementptr inbounds i8, i8* %tmp142, i64 %tmp141
  store i8 92, i8* %arrayidx259, align 1
  br label %if.end260

if.end260:                                        ; preds = %do.body255.if.end260_crit_edge, %if.then258
  %tmp143 = load i64, i64* %len, align 8
  %inc261 = add i64 %tmp143, 1
  store i64 %inc261, i64* %len, align 8
  br label %do.end262

do.end262:                                        ; preds = %if.end260
  br label %do.body263

do.body263:                                       ; preds = %do.end262
  %tmp144 = load i64, i64* %len, align 8
  %tmp145 = load i64, i64* %buffersize.addr, align 8
  %cmp264 = icmp ult i64 %tmp144, %tmp145
  br i1 %cmp264, label %if.then266, label %do.body263.if.end268_crit_edge

do.body263.if.end268_crit_edge:                   ; preds = %do.body263
  br label %if.end268

if.then266:                                       ; preds = %do.body263
  %tmp146 = load i64, i64* %len, align 8
  %tmp147 = load i8*, i8** %buffer.addr, align 8
  %arrayidx267 = getelementptr inbounds i8, i8* %tmp147, i64 %tmp146
  store i8 39, i8* %arrayidx267, align 1
  br label %if.end268

if.end268:                                        ; preds = %do.body263.if.end268_crit_edge, %if.then266
  %tmp148 = load i64, i64* %len, align 8
  %inc269 = add i64 %tmp148, 1
  store i64 %inc269, i64* %len, align 8
  br label %do.end270

do.end270:                                        ; preds = %if.end268
  br label %if.end271

if.end271:                                        ; preds = %sw.bb240.if.end271_crit_edge, %do.end270
  br label %sw.epilog423

sw.bb272:                                         ; preds = %if.end66.sw.bb272_crit_edge358, %if.end66.sw.bb272_crit_edge357, %if.end66.sw.bb272_crit_edge356, %if.end66.sw.bb272_crit_edge355, %if.end66.sw.bb272_crit_edge354, %if.end66.sw.bb272_crit_edge353, %if.end66.sw.bb272_crit_edge352, %if.end66.sw.bb272_crit_edge351, %if.end66.sw.bb272_crit_edge350, %if.end66.sw.bb272_crit_edge349, %if.end66.sw.bb272_crit_edge348, %if.end66.sw.bb272_crit_edge347, %if.end66.sw.bb272_crit_edge346, %if.end66.sw.bb272_crit_edge345, %if.end66.sw.bb272_crit_edge344, %if.end66.sw.bb272_crit_edge343, %if.end66.sw.bb272_crit_edge342, %if.end66.sw.bb272_crit_edge341, %if.end66.sw.bb272_crit_edge340, %if.end66.sw.bb272_crit_edge339, %if.end66.sw.bb272_crit_edge338, %if.end66.sw.bb272_crit_edge337, %if.end66.sw.bb272_crit_edge336, %if.end66.sw.bb272_crit_edge335, %if.end66.sw.bb272_crit_edge334, %if.end66.sw.bb272_crit_edge333, %if.end66.sw.bb272_crit_edge332, %if.end66.sw.bb272_crit_edge331, %if.end66.sw.bb272_crit_edge330, %if.end66.sw.bb272_crit_edge329, %if.end66.sw.bb272_crit_edge328, %if.end66.sw.bb272_crit_edge327, %if.end66.sw.bb272_crit_edge326, %if.end66.sw.bb272_crit_edge325, %if.end66.sw.bb272_crit_edge324, %if.end66.sw.bb272_crit_edge323, %if.end66.sw.bb272_crit_edge322, %if.end66.sw.bb272_crit_edge321, %if.end66.sw.bb272_crit_edge320, %if.end66.sw.bb272_crit_edge319, %if.end66.sw.bb272_crit_edge318, %if.end66.sw.bb272_crit_edge317, %if.end66.sw.bb272_crit_edge316, %if.end66.sw.bb272_crit_edge315, %if.end66.sw.bb272_crit_edge314, %if.end66.sw.bb272_crit_edge313, %if.end66.sw.bb272_crit_edge312, %if.end66.sw.bb272_crit_edge311, %if.end66.sw.bb272_crit_edge310, %if.end66.sw.bb272_crit_edge309, %if.end66.sw.bb272_crit_edge308, %if.end66.sw.bb272_crit_edge307, %if.end66.sw.bb272_crit_edge306, %if.end66.sw.bb272_crit_edge305, %if.end66.sw.bb272_crit_edge304, %if.end66.sw.bb272_crit_edge303, %if.end66.sw.bb272_crit_edge302, %if.end66.sw.bb272_crit_edge301, %if.end66.sw.bb272_crit_edge300, %if.end66.sw.bb272_crit_edge299, %if.end66.sw.bb272_crit_edge298, %if.end66.sw.bb272_crit_edge297, %if.end66.sw.bb272_crit_edge296, %if.end66.sw.bb272_crit_edge295, %if.end66.sw.bb272_crit_edge294, %if.end66.sw.bb272_crit_edge293, %if.end66.sw.bb272_crit_edge292, %if.end66.sw.bb272_crit_edge291, %if.end66.sw.bb272_crit_edge290, %if.end66.sw.bb272_crit_edge289, %if.end66.sw.bb272_crit_edge
  br label %sw.epilog423

sw.default273:                                    ; preds = %if.end66
  %tmp149 = load i8, i8* %unibyte_locale, align 1
  %tobool274 = trunc i8 %tmp149 to i1
  br i1 %tobool274, label %if.then275, label %if.else284

if.then275:                                       ; preds = %sw.default273
  store i64 1, i64* %m, align 8
  %tmp150 = load i8, i8* %c, align 1
  %conv276 = zext i8 %tmp150 to i32
  %idxprom = sext i32 %conv276 to i64
  %call277 = call i16** @__ctype_b_loc() #14
  %tmp151 = load i16*, i16** %call277, align 8
  %arrayidx278 = getelementptr inbounds i16, i16* %tmp151, i64 %idxprom
  %tmp152 = load i16, i16* %arrayidx278, align 2
  %conv279 = zext i16 %tmp152 to i32
  %and280 = and i32 %conv279, 16384
  %cmp281 = icmp ne i32 %and280, 0
  %frombool283 = zext i1 %cmp281 to i8
  store i8 %frombool283, i8* %printable, align 1
  br label %if.end347

if.else284:                                       ; preds = %sw.default273
  %tmp153 = bitcast %struct.__mbstate_t* %mbstate to i8*
  call void @llvm.memset.p0i8.i64(i8* %tmp153, i8 0, i64 8, i32 4, i1 false)
  store i64 0, i64* %m, align 8
  store i8 1, i8* %printable, align 1
  %tmp154 = load i64, i64* %argsize.addr, align 8
  %cmp285 = icmp eq i64 %tmp154, -1
  br i1 %cmp285, label %if.then287, label %if.else284.if.end289_crit_edge

if.else284.if.end289_crit_edge:                   ; preds = %if.else284
  br label %if.end289

if.then287:                                       ; preds = %if.else284
  %tmp155 = load i8*, i8** %arg.addr, align 8
  %call288 = call i64 @strlen(i8* %tmp155) #13
  store i64 %call288, i64* %argsize.addr, align 8
  br label %if.end289

if.end289:                                        ; preds = %if.else284.if.end289_crit_edge, %if.then287
  br label %do.body290

do.body290:                                       ; preds = %do.cond.do.body290_crit_edge, %if.end289
  %tmp156 = load i64, i64* %i, align 8
  %tmp157 = load i64, i64* %m, align 8
  %add291 = add i64 %tmp156, %tmp157
  %tmp158 = load i8*, i8** %arg.addr, align 8
  %arrayidx292 = getelementptr inbounds i8, i8* %tmp158, i64 %add291
  %tmp159 = load i64, i64* %argsize.addr, align 8
  %tmp160 = load i64, i64* %i, align 8
  %tmp161 = load i64, i64* %m, align 8
  %add293 = add i64 %tmp160, %tmp161
  %sub = sub i64 %tmp159, %add293
  %call294 = call i64 @mbrtowc(i32* %w, i8* %arrayidx292, i64 %sub, %struct.__mbstate_t* %mbstate) #8
  store i64 %call294, i64* %bytes, align 8
  %tmp162 = load i64, i64* %bytes, align 8
  %cmp295 = icmp eq i64 %tmp162, 0
  br i1 %cmp295, label %if.then297, label %if.else298

if.then297:                                       ; preds = %do.body290
  br label %do.end346

if.else298:                                       ; preds = %do.body290
  %tmp163 = load i64, i64* %bytes, align 8
  %cmp299 = icmp eq i64 %tmp163, -1
  br i1 %cmp299, label %if.then301, label %if.else302

if.then301:                                       ; preds = %if.else298
  store i8 0, i8* %printable, align 1
  br label %do.end346

if.else302:                                       ; preds = %if.else298
  %tmp164 = load i64, i64* %bytes, align 8
  %cmp303 = icmp eq i64 %tmp164, -2
  br i1 %cmp303, label %if.then305, label %if.else314

if.then305:                                       ; preds = %if.else302
  store i8 0, i8* %printable, align 1
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then305
  %tmp165 = load i64, i64* %i, align 8
  %tmp166 = load i64, i64* %m, align 8
  %add306 = add i64 %tmp165, %tmp166
  %tmp167 = load i64, i64* %argsize.addr, align 8
  %cmp307 = icmp ult i64 %add306, %tmp167
  br i1 %cmp307, label %land.rhs, label %while.cond.land.end_crit_edge

while.cond.land.end_crit_edge:                    ; preds = %while.cond
  store i1 false, i1* %tmp172.reg2mem
  br label %land.end

land.rhs:                                         ; preds = %while.cond
  %tmp168 = load i64, i64* %i, align 8
  %tmp169 = load i64, i64* %m, align 8
  %add309 = add i64 %tmp168, %tmp169
  %tmp170 = load i8*, i8** %arg.addr, align 8
  %arrayidx310 = getelementptr inbounds i8, i8* %tmp170, i64 %add309
  %tmp171 = load i8, i8* %arrayidx310, align 1
  %conv311 = sext i8 %tmp171 to i32
  %tobool312 = icmp ne i32 %conv311, 0
  store i1 %tobool312, i1* %tobool312.reg2mem
  %tobool312.reload = load i1, i1* %tobool312.reg2mem
  store i1 %tobool312.reload, i1* %tmp172.reg2mem
  br label %land.end

land.end:                                         ; preds = %while.cond.land.end_crit_edge, %land.rhs
  %tmp172.reload = load i1, i1* %tmp172.reg2mem
  br i1 %tmp172.reload, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %tmp173 = load i64, i64* %m, align 8
  %inc313 = add i64 %tmp173, 1
  store i64 %inc313, i64* %m, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  br label %do.end346

if.else314:                                       ; preds = %if.else302
  %tmp174 = load i8, i8* %elide_outer_quotes, align 1
  %tobool315 = trunc i8 %tmp174 to i1
  br i1 %tobool315, label %land.lhs.true317, label %if.else314.if.end335_crit_edge

if.else314.if.end335_crit_edge:                   ; preds = %if.else314
  br label %if.end335

land.lhs.true317:                                 ; preds = %if.else314
  %tmp175 = load i32, i32* %quoting_style.addr, align 4
  %cmp318 = icmp eq i32 %tmp175, 2
  br i1 %cmp318, label %if.then320, label %land.lhs.true317.if.end335_crit_edge

land.lhs.true317.if.end335_crit_edge:             ; preds = %land.lhs.true317
  br label %if.end335

if.then320:                                       ; preds = %land.lhs.true317
  store i64 1, i64* %j, align 8
  br label %for.cond321

for.cond321:                                      ; preds = %for.inc332, %if.then320
  %tmp176 = load i64, i64* %j, align 8
  %tmp177 = load i64, i64* %bytes, align 8
  %cmp322 = icmp ult i64 %tmp176, %tmp177
  br i1 %cmp322, label %for.body324, label %for.end334

for.body324:                                      ; preds = %for.cond321
  %tmp178 = load i64, i64* %i, align 8
  %tmp179 = load i64, i64* %m, align 8
  %add325 = add i64 %tmp178, %tmp179
  %tmp180 = load i64, i64* %j, align 8
  %add326 = add i64 %add325, %tmp180
  %tmp181 = load i8*, i8** %arg.addr, align 8
  %arrayidx327 = getelementptr inbounds i8, i8* %tmp181, i64 %add326
  %tmp182 = load i8, i8* %arrayidx327, align 1
  %conv328 = sext i8 %tmp182 to i32
  switch i32 %conv328, label %sw.default330 [
    i32 91, label %for.body324.sw.bb329_crit_edge
    i32 92, label %for.body324.sw.bb329_crit_edge367
    i32 94, label %for.body324.sw.bb329_crit_edge368
    i32 96, label %for.body324.sw.bb329_crit_edge369
    i32 124, label %for.body324.sw.bb329_crit_edge370
  ]

for.body324.sw.bb329_crit_edge370:                ; preds = %for.body324
  br label %sw.bb329

for.body324.sw.bb329_crit_edge369:                ; preds = %for.body324
  br label %sw.bb329

for.body324.sw.bb329_crit_edge368:                ; preds = %for.body324
  br label %sw.bb329

for.body324.sw.bb329_crit_edge367:                ; preds = %for.body324
  br label %sw.bb329

for.body324.sw.bb329_crit_edge:                   ; preds = %for.body324
  br label %sw.bb329

sw.bb329:                                         ; preds = %for.body324.sw.bb329_crit_edge370, %for.body324.sw.bb329_crit_edge369, %for.body324.sw.bb329_crit_edge368, %for.body324.sw.bb329_crit_edge367, %for.body324.sw.bb329_crit_edge
  br label %force_outer_quoting_style

sw.default330:                                    ; preds = %for.body324
  br label %sw.epilog331

sw.epilog331:                                     ; preds = %sw.default330
  br label %for.inc332

for.inc332:                                       ; preds = %sw.epilog331
  %tmp183 = load i64, i64* %j, align 8
  %inc333 = add i64 %tmp183, 1
  store i64 %inc333, i64* %j, align 8
  br label %for.cond321

for.end334:                                       ; preds = %for.cond321
  br label %if.end335

if.end335:                                        ; preds = %land.lhs.true317.if.end335_crit_edge, %if.else314.if.end335_crit_edge, %for.end334
  %tmp184 = load i32, i32* %w, align 4
  %call336 = call i32 @iswprint(i32 %tmp184) #8
  %tobool337 = icmp ne i32 %call336, 0
  br i1 %tobool337, label %if.end335.if.end339_crit_edge, label %if.then338

if.end335.if.end339_crit_edge:                    ; preds = %if.end335
  br label %if.end339

if.then338:                                       ; preds = %if.end335
  store i8 0, i8* %printable, align 1
  br label %if.end339

if.end339:                                        ; preds = %if.end335.if.end339_crit_edge, %if.then338
  %tmp185 = load i64, i64* %bytes, align 8
  %tmp186 = load i64, i64* %m, align 8
  %add340 = add i64 %tmp186, %tmp185
  store i64 %add340, i64* %m, align 8
  br label %if.end341

if.end341:                                        ; preds = %if.end339
  br label %if.end342

if.end342:                                        ; preds = %if.end341
  br label %if.end343

if.end343:                                        ; preds = %if.end342
  br label %do.cond

do.cond:                                          ; preds = %if.end343
  %call344 = call i32 @mbsinit(%struct.__mbstate_t* %mbstate) #13
  %tobool345 = icmp ne i32 %call344, 0
  %lnot = xor i1 %tobool345, true
  br i1 %lnot, label %do.cond.do.body290_crit_edge, label %do.end346.loopexit

do.cond.do.body290_crit_edge:                     ; preds = %do.cond
  br label %do.body290

do.end346.loopexit:                               ; preds = %do.cond
  br label %do.end346

do.end346:                                        ; preds = %do.end346.loopexit, %while.end, %if.then301, %if.then297
  br label %if.end347

if.end347:                                        ; preds = %do.end346, %if.then275
  %tmp187 = load i64, i64* %m, align 8
  %cmp348 = icmp ult i64 1, %tmp187
  br i1 %cmp348, label %if.end347.if.then354_crit_edge, label %lor.lhs.false

if.end347.if.then354_crit_edge:                   ; preds = %if.end347
  br label %if.then354

lor.lhs.false:                                    ; preds = %if.end347
  %tmp188 = load i8, i8* %backslash_escapes, align 1
  %tobool350 = trunc i8 %tmp188 to i1
  br i1 %tobool350, label %land.lhs.true352, label %lor.lhs.false.if.end422_crit_edge

lor.lhs.false.if.end422_crit_edge:                ; preds = %lor.lhs.false
  br label %if.end422

land.lhs.true352:                                 ; preds = %lor.lhs.false
  %tmp189 = load i8, i8* %printable, align 1
  %tobool353 = trunc i8 %tmp189 to i1
  br i1 %tobool353, label %land.lhs.true352.if.end422_crit_edge, label %land.lhs.true352.if.then354_crit_edge

land.lhs.true352.if.then354_crit_edge:            ; preds = %land.lhs.true352
  br label %if.then354

land.lhs.true352.if.end422_crit_edge:             ; preds = %land.lhs.true352
  br label %if.end422

if.then354:                                       ; preds = %land.lhs.true352.if.then354_crit_edge, %if.end347.if.then354_crit_edge
  %tmp190 = load i64, i64* %i, align 8
  %tmp191 = load i64, i64* %m, align 8
  %add355 = add i64 %tmp190, %tmp191
  store i64 %add355, i64* %ilim, align 8
  br label %for.cond356

for.cond356:                                      ; preds = %do.end418, %if.then354
  %tmp192 = load i8, i8* %backslash_escapes, align 1
  %tobool357 = trunc i8 %tmp192 to i1
  br i1 %tobool357, label %land.lhs.true359, label %for.cond356.if.end404_crit_edge

for.cond356.if.end404_crit_edge:                  ; preds = %for.cond356
  br label %if.end404

land.lhs.true359:                                 ; preds = %for.cond356
  %tmp193 = load i8, i8* %printable, align 1
  %tobool360 = trunc i8 %tmp193 to i1
  br i1 %tobool360, label %land.lhs.true359.if.end404_crit_edge, label %if.then361

land.lhs.true359.if.end404_crit_edge:             ; preds = %land.lhs.true359
  br label %if.end404

if.then361:                                       ; preds = %land.lhs.true359
  %tmp194 = load i8, i8* %elide_outer_quotes, align 1
  %tobool362 = trunc i8 %tmp194 to i1
  br i1 %tobool362, label %if.then363, label %if.end364

if.then363:                                       ; preds = %if.then361
  br label %force_outer_quoting_style

if.end364:                                        ; preds = %if.then361
  br label %do.body365

do.body365:                                       ; preds = %if.end364
  %tmp195 = load i64, i64* %len, align 8
  %tmp196 = load i64, i64* %buffersize.addr, align 8
  %cmp366 = icmp ult i64 %tmp195, %tmp196
  br i1 %cmp366, label %if.then368, label %do.body365.if.end370_crit_edge

do.body365.if.end370_crit_edge:                   ; preds = %do.body365
  br label %if.end370

if.then368:                                       ; preds = %do.body365
  %tmp197 = load i64, i64* %len, align 8
  %tmp198 = load i8*, i8** %buffer.addr, align 8
  %arrayidx369 = getelementptr inbounds i8, i8* %tmp198, i64 %tmp197
  store i8 92, i8* %arrayidx369, align 1
  br label %if.end370

if.end370:                                        ; preds = %do.body365.if.end370_crit_edge, %if.then368
  %tmp199 = load i64, i64* %len, align 8
  %inc371 = add i64 %tmp199, 1
  store i64 %inc371, i64* %len, align 8
  br label %do.end373

do.end373:                                        ; preds = %if.end370
  br label %do.body374

do.body374:                                       ; preds = %do.end373
  %tmp200 = load i64, i64* %len, align 8
  %tmp201 = load i64, i64* %buffersize.addr, align 8
  %cmp375 = icmp ult i64 %tmp200, %tmp201
  br i1 %cmp375, label %if.then377, label %do.body374.if.end382_crit_edge

do.body374.if.end382_crit_edge:                   ; preds = %do.body374
  br label %if.end382

if.then377:                                       ; preds = %do.body374
  %tmp202 = load i8, i8* %c, align 1
  %conv378 = zext i8 %tmp202 to i32
  %shr = ashr i32 %conv378, 6
  %add379 = add nsw i32 48, %shr
  %conv380 = trunc i32 %add379 to i8
  %tmp203 = load i64, i64* %len, align 8
  %tmp204 = load i8*, i8** %buffer.addr, align 8
  %arrayidx381 = getelementptr inbounds i8, i8* %tmp204, i64 %tmp203
  store i8 %conv380, i8* %arrayidx381, align 1
  br label %if.end382

if.end382:                                        ; preds = %do.body374.if.end382_crit_edge, %if.then377
  %tmp205 = load i64, i64* %len, align 8
  %inc383 = add i64 %tmp205, 1
  store i64 %inc383, i64* %len, align 8
  br label %do.end385

do.end385:                                        ; preds = %if.end382
  br label %do.body386

do.body386:                                       ; preds = %do.end385
  %tmp206 = load i64, i64* %len, align 8
  %tmp207 = load i64, i64* %buffersize.addr, align 8
  %cmp387 = icmp ult i64 %tmp206, %tmp207
  br i1 %cmp387, label %if.then389, label %do.body386.if.end396_crit_edge

do.body386.if.end396_crit_edge:                   ; preds = %do.body386
  br label %if.end396

if.then389:                                       ; preds = %do.body386
  %tmp208 = load i8, i8* %c, align 1
  %conv390 = zext i8 %tmp208 to i32
  %shr391 = ashr i32 %conv390, 3
  %and392 = and i32 %shr391, 7
  %add393 = add nsw i32 48, %and392
  %conv394 = trunc i32 %add393 to i8
  %tmp209 = load i64, i64* %len, align 8
  %tmp210 = load i8*, i8** %buffer.addr, align 8
  %arrayidx395 = getelementptr inbounds i8, i8* %tmp210, i64 %tmp209
  store i8 %conv394, i8* %arrayidx395, align 1
  br label %if.end396

if.end396:                                        ; preds = %do.body386.if.end396_crit_edge, %if.then389
  %tmp211 = load i64, i64* %len, align 8
  %inc397 = add i64 %tmp211, 1
  store i64 %inc397, i64* %len, align 8
  br label %do.end399

do.end399:                                        ; preds = %if.end396
  %tmp212 = load i8, i8* %c, align 1
  %conv400 = zext i8 %tmp212 to i32
  %and401 = and i32 %conv400, 7
  %add402 = add nsw i32 48, %and401
  %conv403 = trunc i32 %add402 to i8
  store i8 %conv403, i8* %c, align 1
  br label %if.end404

if.end404:                                        ; preds = %land.lhs.true359.if.end404_crit_edge, %for.cond356.if.end404_crit_edge, %do.end399
  %tmp213 = load i64, i64* %ilim, align 8
  %tmp214 = load i64, i64* %i, align 8
  %add405 = add i64 %tmp214, 1
  %cmp406 = icmp ule i64 %tmp213, %add405
  br i1 %cmp406, label %if.then408, label %if.end409

if.then408:                                       ; preds = %if.end404
  br label %for.end421

if.end409:                                        ; preds = %if.end404
  br label %do.body410

do.body410:                                       ; preds = %if.end409
  %tmp215 = load i64, i64* %len, align 8
  %tmp216 = load i64, i64* %buffersize.addr, align 8
  %cmp411 = icmp ult i64 %tmp215, %tmp216
  br i1 %cmp411, label %if.then413, label %do.body410.if.end415_crit_edge

do.body410.if.end415_crit_edge:                   ; preds = %do.body410
  br label %if.end415

if.then413:                                       ; preds = %do.body410
  %tmp217 = load i8, i8* %c, align 1
  %tmp218 = load i64, i64* %len, align 8
  %tmp219 = load i8*, i8** %buffer.addr, align 8
  %arrayidx414 = getelementptr inbounds i8, i8* %tmp219, i64 %tmp218
  store i8 %tmp217, i8* %arrayidx414, align 1
  br label %if.end415

if.end415:                                        ; preds = %do.body410.if.end415_crit_edge, %if.then413
  %tmp220 = load i64, i64* %len, align 8
  %inc416 = add i64 %tmp220, 1
  store i64 %inc416, i64* %len, align 8
  br label %do.end418

do.end418:                                        ; preds = %if.end415
  %tmp221 = load i64, i64* %i, align 8
  %inc419 = add i64 %tmp221, 1
  store i64 %inc419, i64* %i, align 8
  %tmp222 = load i8*, i8** %arg.addr, align 8
  %arrayidx420 = getelementptr inbounds i8, i8* %tmp222, i64 %inc419
  %tmp223 = load i8, i8* %arrayidx420, align 1
  store i8 %tmp223, i8* %c, align 1
  br label %for.cond356

for.end421:                                       ; preds = %if.then408
  br label %store_c

if.end422:                                        ; preds = %land.lhs.true352.if.end422_crit_edge, %lor.lhs.false.if.end422_crit_edge
  br label %sw.epilog423

sw.epilog423:                                     ; preds = %if.end422, %sw.bb272, %if.end271, %if.end239, %if.then230, %if.then225, %if.end213, %sw.epilog186, %if.end120
  %tmp224 = load i8, i8* %backslash_escapes, align 1
  %tobool424 = trunc i8 %tmp224 to i1
  br i1 %tobool424, label %sw.epilog423.land.lhs.true429_crit_edge, label %lor.lhs.false426

sw.epilog423.land.lhs.true429_crit_edge:          ; preds = %sw.epilog423
  br label %land.lhs.true429

lor.lhs.false426:                                 ; preds = %sw.epilog423
  %tmp225 = load i8, i8* %elide_outer_quotes, align 1
  %tobool427 = trunc i8 %tmp225 to i1
  br i1 %tobool427, label %lor.lhs.false426.land.lhs.true429_crit_edge, label %lor.lhs.false426.if.then437_crit_edge

lor.lhs.false426.if.then437_crit_edge:            ; preds = %lor.lhs.false426
  br label %if.then437

lor.lhs.false426.land.lhs.true429_crit_edge:      ; preds = %lor.lhs.false426
  br label %land.lhs.true429

land.lhs.true429:                                 ; preds = %lor.lhs.false426.land.lhs.true429_crit_edge, %sw.epilog423.land.lhs.true429_crit_edge
  %tmp226 = load i32*, i32** %quote_these_too.addr, align 8
  %tobool430 = icmp ne i32* %tmp226, null
  br i1 %tobool430, label %land.lhs.true431, label %land.lhs.true429.if.then437_crit_edge

land.lhs.true429.if.then437_crit_edge:            ; preds = %land.lhs.true429
  br label %if.then437

land.lhs.true431:                                 ; preds = %land.lhs.true429
  %tmp227 = load i8, i8* %c, align 1
  %conv432 = zext i8 %tmp227 to i64
  %div = udiv i64 %conv432, 32
  %tmp228 = load i32*, i32** %quote_these_too.addr, align 8
  %arrayidx433 = getelementptr inbounds i32, i32* %tmp228, i64 %div
  %tmp229 = load i32, i32* %arrayidx433, align 4
  %tmp230 = load i8, i8* %c, align 1
  %conv434 = zext i8 %tmp230 to i64
  %rem = urem i64 %conv434, 32
  %sh_prom = trunc i64 %rem to i32
  %shl = shl i32 1, %sh_prom
  %and435 = and i32 %tmp229, %shl
  %tobool436 = icmp ne i32 %and435, 0
  br i1 %tobool436, label %if.end438, label %land.lhs.true431.if.then437_crit_edge

land.lhs.true431.if.then437_crit_edge:            ; preds = %land.lhs.true431
  br label %if.then437

if.then437:                                       ; preds = %land.lhs.true431.if.then437_crit_edge, %land.lhs.true429.if.then437_crit_edge, %lor.lhs.false426.if.then437_crit_edge
  br label %store_c

if.end438:                                        ; preds = %land.lhs.true431
  br label %store_escape

store_escape:                                     ; preds = %if.end438, %if.then212
  %tmp231 = load i8, i8* %elide_outer_quotes, align 1
  %tobool439 = trunc i8 %tmp231 to i1
  br i1 %tobool439, label %if.then440, label %if.end441

if.then440:                                       ; preds = %store_escape
  br label %force_outer_quoting_style

if.end441:                                        ; preds = %store_escape
  br label %do.body442

do.body442:                                       ; preds = %if.end441
  %tmp232 = load i64, i64* %len, align 8
  %tmp233 = load i64, i64* %buffersize.addr, align 8
  %cmp443 = icmp ult i64 %tmp232, %tmp233
  br i1 %cmp443, label %if.then445, label %do.body442.if.end447_crit_edge

do.body442.if.end447_crit_edge:                   ; preds = %do.body442
  br label %if.end447

if.then445:                                       ; preds = %do.body442
  %tmp234 = load i64, i64* %len, align 8
  %tmp235 = load i8*, i8** %buffer.addr, align 8
  %arrayidx446 = getelementptr inbounds i8, i8* %tmp235, i64 %tmp234
  store i8 92, i8* %arrayidx446, align 1
  br label %if.end447

if.end447:                                        ; preds = %do.body442.if.end447_crit_edge, %if.then445
  %tmp236 = load i64, i64* %len, align 8
  %inc448 = add i64 %tmp236, 1
  store i64 %inc448, i64* %len, align 8
  br label %do.end450

do.end450:                                        ; preds = %if.end447
  br label %store_c

store_c:                                          ; preds = %do.end450, %if.then437, %for.end421, %if.then202
  br label %do.body451

do.body451:                                       ; preds = %store_c
  %tmp237 = load i64, i64* %len, align 8
  %tmp238 = load i64, i64* %buffersize.addr, align 8
  %cmp452 = icmp ult i64 %tmp237, %tmp238
  br i1 %cmp452, label %if.then454, label %do.body451.if.end456_crit_edge

do.body451.if.end456_crit_edge:                   ; preds = %do.body451
  br label %if.end456

if.then454:                                       ; preds = %do.body451
  %tmp239 = load i8, i8* %c, align 1
  %tmp240 = load i64, i64* %len, align 8
  %tmp241 = load i8*, i8** %buffer.addr, align 8
  %arrayidx455 = getelementptr inbounds i8, i8* %tmp241, i64 %tmp240
  store i8 %tmp239, i8* %arrayidx455, align 1
  br label %if.end456

if.end456:                                        ; preds = %do.body451.if.end456_crit_edge, %if.then454
  %tmp242 = load i64, i64* %len, align 8
  %inc457 = add i64 %tmp242, 1
  store i64 %inc457, i64* %len, align 8
  br label %do.end459

do.end459:                                        ; preds = %if.end456
  br label %for.inc460

for.inc460:                                       ; preds = %do.end459, %if.then118
  %tmp243 = load i64, i64* %i, align 8
  %inc461 = add i64 %tmp243, 1
  store i64 %inc461, i64* %i, align 8
  br label %for.cond36

for.end462:                                       ; preds = %cond.false.for.end462_crit_edge, %cond.true.for.end462_crit_edge
  %tmp244 = load i64, i64* %len, align 8
  %cmp463 = icmp eq i64 %tmp244, 0
  br i1 %cmp463, label %land.lhs.true465, label %for.end462.if.end472_crit_edge

for.end462.if.end472_crit_edge:                   ; preds = %for.end462
  br label %if.end472

land.lhs.true465:                                 ; preds = %for.end462
  %tmp245 = load i32, i32* %quoting_style.addr, align 4
  %cmp466 = icmp eq i32 %tmp245, 2
  br i1 %cmp466, label %land.lhs.true468, label %land.lhs.true465.if.end472_crit_edge

land.lhs.true465.if.end472_crit_edge:             ; preds = %land.lhs.true465
  br label %if.end472

land.lhs.true468:                                 ; preds = %land.lhs.true465
  %tmp246 = load i8, i8* %elide_outer_quotes, align 1
  %tobool469 = trunc i8 %tmp246 to i1
  br i1 %tobool469, label %if.then471, label %land.lhs.true468.if.end472_crit_edge

land.lhs.true468.if.end472_crit_edge:             ; preds = %land.lhs.true468
  br label %if.end472

if.then471:                                       ; preds = %land.lhs.true468
  br label %force_outer_quoting_style

if.end472:                                        ; preds = %land.lhs.true468.if.end472_crit_edge, %land.lhs.true465.if.end472_crit_edge, %for.end462.if.end472_crit_edge
  %tmp247 = load i8*, i8** %quote_string, align 8
  %tobool473 = icmp ne i8* %tmp247, null
  br i1 %tobool473, label %land.lhs.true474, label %if.end472.if.end492_crit_edge

if.end472.if.end492_crit_edge:                    ; preds = %if.end472
  br label %if.end492

land.lhs.true474:                                 ; preds = %if.end472
  %tmp248 = load i8, i8* %elide_outer_quotes, align 1
  %tobool475 = trunc i8 %tmp248 to i1
  br i1 %tobool475, label %land.lhs.true474.if.end492_crit_edge, label %if.then476

land.lhs.true474.if.end492_crit_edge:             ; preds = %land.lhs.true474
  br label %if.end492

if.then476:                                       ; preds = %land.lhs.true474
  br label %for.cond477

for.cond477:                                      ; preds = %for.inc489, %if.then476
  %tmp249 = load i8*, i8** %quote_string, align 8
  %tmp250 = load i8, i8* %tmp249, align 1
  %tobool478 = icmp ne i8 %tmp250, 0
  br i1 %tobool478, label %for.body479, label %for.end491

for.body479:                                      ; preds = %for.cond477
  br label %do.body480

do.body480:                                       ; preds = %for.body479
  %tmp251 = load i64, i64* %len, align 8
  %tmp252 = load i64, i64* %buffersize.addr, align 8
  %cmp481 = icmp ult i64 %tmp251, %tmp252
  br i1 %cmp481, label %if.then483, label %do.body480.if.end485_crit_edge

do.body480.if.end485_crit_edge:                   ; preds = %do.body480
  br label %if.end485

if.then483:                                       ; preds = %do.body480
  %tmp253 = load i8*, i8** %quote_string, align 8
  %tmp254 = load i8, i8* %tmp253, align 1
  %tmp255 = load i64, i64* %len, align 8
  %tmp256 = load i8*, i8** %buffer.addr, align 8
  %arrayidx484 = getelementptr inbounds i8, i8* %tmp256, i64 %tmp255
  store i8 %tmp254, i8* %arrayidx484, align 1
  br label %if.end485

if.end485:                                        ; preds = %do.body480.if.end485_crit_edge, %if.then483
  %tmp257 = load i64, i64* %len, align 8
  %inc486 = add i64 %tmp257, 1
  store i64 %inc486, i64* %len, align 8
  br label %do.end488

do.end488:                                        ; preds = %if.end485
  br label %for.inc489

for.inc489:                                       ; preds = %do.end488
  %tmp258 = load i8*, i8** %quote_string, align 8
  %incdec.ptr490 = getelementptr inbounds i8, i8* %tmp258, i32 1
  store i8* %incdec.ptr490, i8** %quote_string, align 8
  br label %for.cond477

for.end491:                                       ; preds = %for.cond477
  br label %if.end492

if.end492:                                        ; preds = %land.lhs.true474.if.end492_crit_edge, %if.end472.if.end492_crit_edge, %for.end491
  %tmp259 = load i64, i64* %len, align 8
  %tmp260 = load i64, i64* %buffersize.addr, align 8
  %cmp493 = icmp ult i64 %tmp259, %tmp260
  br i1 %cmp493, label %if.then495, label %if.end492.if.end497_crit_edge

if.end492.if.end497_crit_edge:                    ; preds = %if.end492
  br label %if.end497

if.then495:                                       ; preds = %if.end492
  %tmp261 = load i64, i64* %len, align 8
  %tmp262 = load i8*, i8** %buffer.addr, align 8
  %arrayidx496 = getelementptr inbounds i8, i8* %tmp262, i64 %tmp261
  store i8 0, i8* %arrayidx496, align 1
  br label %if.end497

if.end497:                                        ; preds = %if.end492.if.end497_crit_edge, %if.then495
  %tmp263 = load i64, i64* %len, align 8
  store i64 %tmp263, i64* %retval
  br label %return

force_outer_quoting_style:                        ; preds = %if.then471, %if.then440, %if.then363, %sw.bb329, %if.then245, %if.then238, %if.then209, %if.then145, %if.then124, %if.then73, %if.then56
  %tmp264 = load i8*, i8** %buffer.addr, align 8
  %tmp265 = load i64, i64* %buffersize.addr, align 8
  %tmp266 = load i8*, i8** %arg.addr, align 8
  %tmp267 = load i64, i64* %argsize.addr, align 8
  %tmp268 = load i32, i32* %quoting_style.addr, align 4
  %tmp269 = load i32, i32* %flags.addr, align 4
  %and498 = and i32 %tmp269, -3
  %call499 = call i64 @quotearg_buffer_restyled(i8* %tmp264, i64 %tmp265, i8* %tmp266, i64 %tmp267, i32 %tmp268, i32 %and498, i32* null)
  store i64 %call499, i64* %retval
  br label %return

return:                                           ; preds = %force_outer_quoting_style, %if.end497
  %tmp270 = load i64, i64* %retval
  ret i64 %tmp270
}

; Function Attrs: nounwind uwtable
define internal i8* @quotearg_n_options(i32 %n, i8* %arg, i64 %argsize, %struct.quoting_options* %options) #0 {
entry:
  %n.addr = alloca i32, align 4
  %arg.addr = alloca i8*, align 8
  %argsize.addr = alloca i64, align 8
  %options.addr = alloca %struct.quoting_options*, align 8
  %e = alloca i32, align 4
  %n0 = alloca i32, align 4
  %sv = alloca %struct.slotvec*, align 8
  %n1 = alloca i64, align 8
  %preallocated = alloca i8, align 1
  %size = alloca i64, align 8
  %val = alloca i8*, align 8
  %flags = alloca i32, align 4
  %qsize = alloca i64, align 8
  %tmp10.reg2mem = alloca %struct.slotvec*
  %cond.reg2mem = alloca %struct.slotvec*
  %"reg2mem alloca point" = bitcast i32 0 to i32
  store i32 %n, i32* %n.addr, align 4
  store i8* %arg, i8** %arg.addr, align 8
  store i64 %argsize, i64* %argsize.addr, align 8
  store %struct.quoting_options* %options, %struct.quoting_options** %options.addr, align 8
  %call = call i32* @__errno_location() #14
  %tmp = load i32, i32* %call, align 4
  store i32 %tmp, i32* %e, align 4
  %tmp1 = load i32, i32* %n.addr, align 4
  store i32 %tmp1, i32* %n0, align 4
  %tmp2 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8
  store %struct.slotvec* %tmp2, %struct.slotvec** %sv, align 8
  %tmp3 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %tmp3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @abort() #12
  unreachable

if.end:                                           ; preds = %entry
  %tmp4 = load i32, i32* @nslots, align 4
  %tmp5 = load i32, i32* %n0, align 4
  %cmp1 = icmp ule i32 %tmp4, %tmp5
  br i1 %cmp1, label %if.then2, label %if.end.if.end17_crit_edge

if.end.if.end17_crit_edge:                        ; preds = %if.end
  br label %if.end17

if.then2:                                         ; preds = %if.end
  %tmp6 = load i32, i32* %n0, align 4
  %add = add i32 %tmp6, 1
  %conv = zext i32 %add to i64
  store i64 %conv, i64* %n1, align 8
  %tmp7 = load %struct.slotvec*, %struct.slotvec** %sv, align 8
  %cmp3 = icmp eq %struct.slotvec* %tmp7, @slotvec0
  %frombool = zext i1 %cmp3 to i8
  store i8 %frombool, i8* %preallocated, align 1
  %tmp8 = load i64, i64* %n1, align 8
  %cmp5 = icmp ult i64 1152921504606846975, %tmp8
  br i1 %cmp5, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.then2
  call void @xalloc_die() #15
  unreachable

if.end8:                                          ; preds = %if.then2
  %tmp9 = load i8, i8* %preallocated, align 1
  %tobool = trunc i8 %tmp9 to i1
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end8
  store %struct.slotvec* null, %struct.slotvec** %cond.reg2mem
  br label %cond.end

cond.false:                                       ; preds = %if.end8
  %tmp10 = load %struct.slotvec*, %struct.slotvec** %sv, align 8
  store %struct.slotvec* %tmp10, %struct.slotvec** %tmp10.reg2mem
  %tmp10.reload = load %struct.slotvec*, %struct.slotvec** %tmp10.reg2mem
  store %struct.slotvec* %tmp10.reload, %struct.slotvec** %cond.reg2mem
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond.reload = load %struct.slotvec*, %struct.slotvec** %cond.reg2mem
  %tmp11 = bitcast %struct.slotvec* %cond.reload to i8*
  %tmp12 = load i64, i64* %n1, align 8
  %mul = mul i64 %tmp12, 16
  %call10 = call i8* @xrealloc(i8* %tmp11, i64 %mul)
  %tmp13 = bitcast i8* %call10 to %struct.slotvec*
  store %struct.slotvec* %tmp13, %struct.slotvec** %sv, align 8
  store %struct.slotvec* %tmp13, %struct.slotvec** @slotvec, align 8
  %tmp14 = load i8, i8* %preallocated, align 1
  %tobool11 = trunc i8 %tmp14 to i1
  br i1 %tobool11, label %if.then12, label %cond.end.if.end13_crit_edge

cond.end.if.end13_crit_edge:                      ; preds = %cond.end
  br label %if.end13

if.then12:                                        ; preds = %cond.end
  %tmp15 = load %struct.slotvec*, %struct.slotvec** %sv, align 8
  %tmp16 = bitcast %struct.slotvec* %tmp15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %tmp16, i8* bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i32 8, i1 false)
  br label %if.end13

if.end13:                                         ; preds = %cond.end.if.end13_crit_edge, %if.then12
  %tmp17 = load %struct.slotvec*, %struct.slotvec** %sv, align 8
  %tmp18 = load i32, i32* @nslots, align 4
  %idx.ext = zext i32 %tmp18 to i64
  %add.ptr = getelementptr inbounds %struct.slotvec, %struct.slotvec* %tmp17, i64 %idx.ext
  %tmp19 = bitcast %struct.slotvec* %add.ptr to i8*
  %tmp20 = load i64, i64* %n1, align 8
  %tmp21 = load i32, i32* @nslots, align 4
  %conv14 = zext i32 %tmp21 to i64
  %sub = sub i64 %tmp20, %conv14
  %mul15 = mul i64 %sub, 16
  call void @llvm.memset.p0i8.i64(i8* %tmp19, i8 0, i64 %mul15, i32 8, i1 false)
  %tmp22 = load i64, i64* %n1, align 8
  %conv16 = trunc i64 %tmp22 to i32
  store i32 %conv16, i32* @nslots, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.end.if.end17_crit_edge, %if.end13
  %tmp23 = load i32, i32* %n.addr, align 4
  %idxprom = sext i32 %tmp23 to i64
  %tmp24 = load %struct.slotvec*, %struct.slotvec** %sv, align 8
  %arrayidx = getelementptr inbounds %struct.slotvec, %struct.slotvec* %tmp24, i64 %idxprom
  %size18 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %arrayidx, i32 0, i32 0
  %tmp25 = load i64, i64* %size18, align 8
  store i64 %tmp25, i64* %size, align 8
  %tmp26 = load i32, i32* %n.addr, align 4
  %idxprom19 = sext i32 %tmp26 to i64
  %tmp27 = load %struct.slotvec*, %struct.slotvec** %sv, align 8
  %arrayidx20 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %tmp27, i64 %idxprom19
  %val21 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %arrayidx20, i32 0, i32 1
  %tmp28 = load i8*, i8** %val21, align 8
  store i8* %tmp28, i8** %val, align 8
  %tmp29 = load %struct.quoting_options*, %struct.quoting_options** %options.addr, align 8
  %flags22 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %tmp29, i32 0, i32 1
  %tmp30 = load i32, i32* %flags22, align 4
  %or = or i32 %tmp30, 1
  store i32 %or, i32* %flags, align 4
  %tmp31 = load i8*, i8** %val, align 8
  %tmp32 = load i64, i64* %size, align 8
  %tmp33 = load i8*, i8** %arg.addr, align 8
  %tmp34 = load i64, i64* %argsize.addr, align 8
  %tmp35 = load %struct.quoting_options*, %struct.quoting_options** %options.addr, align 8
  %style = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %tmp35, i32 0, i32 0
  %tmp36 = load i32, i32* %style, align 4
  %tmp37 = load i32, i32* %flags, align 4
  %tmp38 = load %struct.quoting_options*, %struct.quoting_options** %options.addr, align 8
  %quote_these_too = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %tmp38, i32 0, i32 2
  %arraydecay = getelementptr inbounds [8 x i32], [8 x i32]* %quote_these_too, i32 0, i32 0
  %call23 = call i64 @quotearg_buffer_restyled(i8* %tmp31, i64 %tmp32, i8* %tmp33, i64 %tmp34, i32 %tmp36, i32 %tmp37, i32* %arraydecay)
  store i64 %call23, i64* %qsize, align 8
  %tmp39 = load i64, i64* %size, align 8
  %tmp40 = load i64, i64* %qsize, align 8
  %cmp24 = icmp ule i64 %tmp39, %tmp40
  br i1 %cmp24, label %if.then26, label %if.end17.if.end43_crit_edge

if.end17.if.end43_crit_edge:                      ; preds = %if.end17
  br label %if.end43

if.then26:                                        ; preds = %if.end17
  %tmp41 = load i64, i64* %qsize, align 8
  %add27 = add i64 %tmp41, 1
  store i64 %add27, i64* %size, align 8
  %tmp42 = load i32, i32* %n.addr, align 4
  %idxprom28 = sext i32 %tmp42 to i64
  %tmp43 = load %struct.slotvec*, %struct.slotvec** %sv, align 8
  %arrayidx29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %tmp43, i64 %idxprom28
  %size30 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %arrayidx29, i32 0, i32 0
  store i64 %add27, i64* %size30, align 8
  %tmp44 = load i8*, i8** %val, align 8
  %cmp31 = icmp ne i8* %tmp44, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0)
  br i1 %cmp31, label %if.then33, label %if.then26.if.end34_crit_edge

if.then26.if.end34_crit_edge:                     ; preds = %if.then26
  br label %if.end34

if.then33:                                        ; preds = %if.then26
  %tmp45 = load i8*, i8** %val, align 8
  call void @free(i8* %tmp45) #8
  br label %if.end34

if.end34:                                         ; preds = %if.then26.if.end34_crit_edge, %if.then33
  %tmp46 = load i64, i64* %size, align 8
  %call35 = call i8* @xcharalloc(i64 %tmp46)
  store i8* %call35, i8** %val, align 8
  %tmp47 = load i32, i32* %n.addr, align 4
  %idxprom36 = sext i32 %tmp47 to i64
  %tmp48 = load %struct.slotvec*, %struct.slotvec** %sv, align 8
  %arrayidx37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %tmp48, i64 %idxprom36
  %val38 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %arrayidx37, i32 0, i32 1
  store i8* %call35, i8** %val38, align 8
  %tmp49 = load i8*, i8** %val, align 8
  %tmp50 = load i64, i64* %size, align 8
  %tmp51 = load i8*, i8** %arg.addr, align 8
  %tmp52 = load i64, i64* %argsize.addr, align 8
  %tmp53 = load %struct.quoting_options*, %struct.quoting_options** %options.addr, align 8
  %style39 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %tmp53, i32 0, i32 0
  %tmp54 = load i32, i32* %style39, align 4
  %tmp55 = load i32, i32* %flags, align 4
  %tmp56 = load %struct.quoting_options*, %struct.quoting_options** %options.addr, align 8
  %quote_these_too40 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %tmp56, i32 0, i32 2
  %arraydecay41 = getelementptr inbounds [8 x i32], [8 x i32]* %quote_these_too40, i32 0, i32 0
  %call42 = call i64 @quotearg_buffer_restyled(i8* %tmp49, i64 %tmp50, i8* %tmp51, i64 %tmp52, i32 %tmp54, i32 %tmp55, i32* %arraydecay41)
  br label %if.end43

if.end43:                                         ; preds = %if.end17.if.end43_crit_edge, %if.end34
  %tmp57 = load i32, i32* %e, align 4
  %call44 = call i32* @__errno_location() #14
  store i32 %tmp57, i32* %call44, align 4
  %tmp58 = load i8*, i8** %val, align 8
  ret i8* %tmp58
}

; Function Attrs: nounwind uwtable
define internal void @quoting_options_from_style(%struct.quoting_options* noalias sret %agg.result, i32 %style) #0 {
entry:
  %style.addr = alloca i32, align 4
  %o = alloca %struct.quoting_options, align 4
  %"reg2mem alloca point" = bitcast i32 0 to i32
  store i32 %style, i32* %style.addr, align 4
  %tmp = load i32, i32* %style.addr, align 4
  %style1 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %o, i32 0, i32 0
  store i32 %tmp, i32* %style1, align 4
  %flags = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %o, i32 0, i32 1
  store i32 0, i32* %flags, align 4
  %quote_these_too = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %o, i32 0, i32 2
  %tmp1 = bitcast [8 x i32]* %quote_these_too to i8*
  call void @llvm.memset.p0i8.i64(i8* %tmp1, i8 0, i64 32, i32 4, i1 false)
  %tmp2 = bitcast %struct.quoting_options* %agg.result to i8*
  %tmp3 = bitcast %struct.quoting_options* %o to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %tmp2, i8* %tmp3, i64 40, i32 4, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i8* @gettext_quote(i8* %msgid, i32 %s) #0 {
entry:
  %msgid.addr = alloca i8*, align 8
  %s.addr = alloca i32, align 4
  %translation = alloca i8*, align 8
  %"reg2mem alloca point" = bitcast i32 0 to i32
  store i8* %msgid, i8** %msgid.addr, align 8
  store i32 %s, i32* %s.addr, align 4
  %tmp = load i8*, i8** %msgid.addr, align 8
  %call = call i8* @gettext(i8* %tmp) #8
  store i8* %call, i8** %translation, align 8
  %tmp1 = load i8*, i8** %translation, align 8
  %tmp2 = load i8*, i8** %msgid.addr, align 8
  %cmp = icmp eq i8* %tmp1, %tmp2
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %tmp3 = load i32, i32* %s.addr, align 4
  %cmp1 = icmp eq i32 %tmp3, 7
  br i1 %cmp1, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str8112, i32 0, i32 0), i8** %translation, align 8
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge, %if.then
  %tmp4 = load i8*, i8** %translation, align 8
  ret i8* %tmp4
}

; Function Attrs: nounwind uwtable
define i32 @rpl_vfprintf(%struct._IO_FILE* %fp, i8* %format, %struct.__va_list_tag* %args) #0 {
entry:
  %retval = alloca i32, align 4
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %format.addr = alloca i8*, align 8
  %args.addr = alloca %struct.__va_list_tag*, align 8
  %buf = alloca [2000 x i8], align 16
  %output = alloca i8*, align 8
  %len = alloca i64, align 8
  %lenbuf = alloca i64, align 8
  %saved_errno = alloca i32, align 4
  %"reg2mem alloca point" = bitcast i32 0 to i32
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store i8* %format, i8** %format.addr, align 8
  store %struct.__va_list_tag* %args, %struct.__va_list_tag** %args.addr, align 8
  store i64 2000, i64* %lenbuf, align 8
  %arraydecay = getelementptr inbounds [2000 x i8], [2000 x i8]* %buf, i32 0, i32 0
  %tmp = load i8*, i8** %format.addr, align 8
  %tmp1 = load %struct.__va_list_tag*, %struct.__va_list_tag** %args.addr, align 8
  %call = call i8* @vasnprintf(i8* %arraydecay, i64* %lenbuf, i8* %tmp, %struct.__va_list_tag* %tmp1)
  store i8* %call, i8** %output, align 8
  %tmp2 = load i64, i64* %lenbuf, align 8
  store i64 %tmp2, i64* %len, align 8
  %tmp3 = load i8*, i8** %output, align 8
  %tobool = icmp ne i8* %tmp3, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %tmp4 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  call void @fseterr(%struct._IO_FILE* %tmp4)
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %tmp5 = load i8*, i8** %output, align 8
  %tmp6 = load i64, i64* %len, align 8
  %tmp7 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call1 = call i64 @fwrite(i8* %tmp5, i64 1, i64 %tmp6, %struct._IO_FILE* %tmp7)
  %tmp8 = load i64, i64* %len, align 8
  %cmp = icmp ult i64 %call1, %tmp8
  br i1 %cmp, label %if.then2, label %if.end9

if.then2:                                         ; preds = %if.end
  %tmp9 = load i8*, i8** %output, align 8
  %arraydecay3 = getelementptr inbounds [2000 x i8], [2000 x i8]* %buf, i32 0, i32 0
  %cmp4 = icmp ne i8* %tmp9, %arraydecay3
  br i1 %cmp4, label %if.then5, label %if.then2.if.end8_crit_edge

if.then2.if.end8_crit_edge:                       ; preds = %if.then2
  br label %if.end8

if.then5:                                         ; preds = %if.then2
  %call6 = call i32* @__errno_location() #14
  %tmp10 = load i32, i32* %call6, align 4
  store i32 %tmp10, i32* %saved_errno, align 4
  %tmp11 = load i8*, i8** %output, align 8
  call void @free(i8* %tmp11) #8
  %tmp12 = load i32, i32* %saved_errno, align 4
  %call7 = call i32* @__errno_location() #14
  store i32 %tmp12, i32* %call7, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then2.if.end8_crit_edge, %if.then5
  store i32 -1, i32* %retval
  br label %return

if.end9:                                          ; preds = %if.end
  %tmp13 = load i64, i64* %len, align 8
  %cmp10 = icmp ugt i64 %tmp13, 2147483647
  br i1 %cmp10, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.end9
  %call12 = call i32* @__errno_location() #14
  store i32 75, i32* %call12, align 4
  %tmp14 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  call void @fseterr(%struct._IO_FILE* %tmp14)
  store i32 -1, i32* %retval
  br label %return

if.end13:                                         ; preds = %if.end9
  %tmp15 = load i64, i64* %len, align 8
  %conv = trunc i64 %tmp15 to i32
  store i32 %conv, i32* %retval
  br label %return

return:                                           ; preds = %if.end13, %if.then11, %if.end8, %if.then
  %tmp16 = load i32, i32* %retval
  ret i32 %tmp16
}

declare i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define i8* @xnmalloc(i64 %n, i64 %s) #0 {
entry:
  %n.addr = alloca i64, align 8
  %s.addr = alloca i64, align 8
  %"reg2mem alloca point" = bitcast i32 0 to i32
  store i64 %n, i64* %n.addr, align 8
  store i64 %s, i64* %s.addr, align 8
  %tmp = load i64, i64* %s.addr, align 8
  %div = udiv i64 -1, %tmp
  %tmp1 = load i64, i64* %n.addr, align 8
  %cmp = icmp ult i64 %div, %tmp1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @xalloc_die() #15
  unreachable

if.end:                                           ; preds = %entry
  %tmp2 = load i64, i64* %n.addr, align 8
  %tmp3 = load i64, i64* %s.addr, align 8
  %mul = mul i64 %tmp2, %tmp3
  %call = call i8* @xmalloc(i64 %mul)
  ret i8* %call
}

; Function Attrs: nounwind uwtable
define i8* @xmalloc(i64 %n) #0 {
entry:
  %n.addr = alloca i64, align 8
  %p = alloca i8*, align 8
  %"reg2mem alloca point" = bitcast i32 0 to i32
  store i64 %n, i64* %n.addr, align 8
  %tmp = load i64, i64* %n.addr, align 8
  %call = call noalias i8* @malloc(i64 %tmp) #8
  store i8* %call, i8** %p, align 8
  %tmp1 = load i8*, i8** %p, align 8
  %tobool = icmp ne i8* %tmp1, null
  br i1 %tobool, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %tmp2 = load i64, i64* %n.addr, align 8
  %cmp = icmp ne i64 %tmp2, 0
  br i1 %cmp, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @xalloc_die() #15
  unreachable

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %tmp3 = load i8*, i8** %p, align 8
  ret i8* %tmp3
}

; Function Attrs: nounwind uwtable
define i8* @xnrealloc(i8* %p, i64 %n, i64 %s) #0 {
entry:
  %p.addr = alloca i8*, align 8
  %n.addr = alloca i64, align 8
  %s.addr = alloca i64, align 8
  %"reg2mem alloca point" = bitcast i32 0 to i32
  store i8* %p, i8** %p.addr, align 8
  store i64 %n, i64* %n.addr, align 8
  store i64 %s, i64* %s.addr, align 8
  %tmp = load i64, i64* %s.addr, align 8
  %div = udiv i64 -1, %tmp
  %tmp1 = load i64, i64* %n.addr, align 8
  %cmp = icmp ult i64 %div, %tmp1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @xalloc_die() #15
  unreachable

if.end:                                           ; preds = %entry
  %tmp2 = load i8*, i8** %p.addr, align 8
  %tmp3 = load i64, i64* %n.addr, align 8
  %tmp4 = load i64, i64* %s.addr, align 8
  %mul = mul i64 %tmp3, %tmp4
  %call = call i8* @xrealloc(i8* %tmp2, i64 %mul)
  ret i8* %call
}

; Function Attrs: nounwind uwtable
define i8* @xrealloc(i8* %p, i64 %n) #0 {
entry:
  %p.addr = alloca i8*, align 8
  %n.addr = alloca i64, align 8
  %"reg2mem alloca point" = bitcast i32 0 to i32
  store i8* %p, i8** %p.addr, align 8
  store i64 %n, i64* %n.addr, align 8
  %tmp = load i8*, i8** %p.addr, align 8
  %tmp1 = load i64, i64* %n.addr, align 8
  %call = call i8* @realloc(i8* %tmp, i64 %tmp1) #8
  store i8* %call, i8** %p.addr, align 8
  %tmp2 = load i8*, i8** %p.addr, align 8
  %tobool = icmp ne i8* %tmp2, null
  br i1 %tobool, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %tmp3 = load i64, i64* %n.addr, align 8
  %cmp = icmp ne i64 %tmp3, 0
  br i1 %cmp, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @xalloc_die() #15
  unreachable

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %tmp4 = load i8*, i8** %p.addr, align 8
  ret i8* %tmp4
}

; Function Attrs: nounwind uwtable
define i8* @x2nrealloc(i8* %p, i64* %pn, i64 %s) #0 {
entry:
  %p.addr = alloca i8*, align 8
  %pn.addr = alloca i64*, align 8
  %s.addr = alloca i64, align 8
  %n = alloca i64, align 8
  %"reg2mem alloca point" = bitcast i32 0 to i32
  store i8* %p, i8** %p.addr, align 8
  store i64* %pn, i64** %pn.addr, align 8
  store i64 %s, i64* %s.addr, align 8
  %tmp = load i64*, i64** %pn.addr, align 8
  %tmp1 = load i64, i64* %tmp, align 8
  store i64 %tmp1, i64* %n, align 8
  %tmp2 = load i8*, i8** %p.addr, align 8
  %tobool = icmp ne i8* %tmp2, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %tmp3 = load i64, i64* %n, align 8
  %tobool1 = icmp ne i64 %tmp3, 0
  br i1 %tobool1, label %if.then.if.end_crit_edge, label %if.then2

if.then.if.end_crit_edge:                         ; preds = %if.then
  br label %if.end

if.then2:                                         ; preds = %if.then
  %tmp4 = load i64, i64* %s.addr, align 8
  %div = udiv i64 64, %tmp4
  store i64 %div, i64* %n, align 8
  %tmp5 = load i64, i64* %n, align 8
  %tobool3 = icmp ne i64 %tmp5, 0
  %lnot = xor i1 %tobool3, true
  %lnot.ext = zext i1 %lnot to i32
  %conv = sext i32 %lnot.ext to i64
  %tmp6 = load i64, i64* %n, align 8
  %add = add i64 %tmp6, %conv
  store i64 %add, i64* %n, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.if.end_crit_edge, %if.then2
  br label %if.end11

if.else:                                          ; preds = %entry
  %tmp7 = load i64, i64* %s.addr, align 8
  %div4 = udiv i64 -6148914691236517206, %tmp7
  %tmp8 = load i64, i64* %n, align 8
  %cmp = icmp ule i64 %div4, %tmp8
  br i1 %cmp, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.else
  call void @xalloc_die() #15
  unreachable

if.end7:                                          ; preds = %if.else
  %tmp9 = load i64, i64* %n, align 8
  %add8 = add i64 %tmp9, 1
  %div9 = udiv i64 %add8, 2
  %tmp10 = load i64, i64* %n, align 8
  %add10 = add i64 %tmp10, %div9
  store i64 %add10, i64* %n, align 8
  br label %if.end11

if.end11:                                         ; preds = %if.end7, %if.end
  %tmp11 = load i64, i64* %n, align 8
  %tmp12 = load i64*, i64** %pn.addr, align 8
  store i64 %tmp11, i64* %tmp12, align 8
  %tmp13 = load i8*, i8** %p.addr, align 8
  %tmp14 = load i64, i64* %n, align 8
  %tmp15 = load i64, i64* %s.addr, align 8
  %mul = mul i64 %tmp14, %tmp15
  %call = call i8* @xrealloc(i8* %tmp13, i64 %mul)
  ret i8* %call
}

; Function Attrs: nounwind uwtable
define i8* @xcharalloc(i64 %n) #0 {
entry:
  %n.addr = alloca i64, align 8
  %"reg2mem alloca point" = bitcast i32 0 to i32
  store i64 %n, i64* %n.addr, align 8
  %tmp = load i64, i64* %n.addr, align 8
  %call = call i8* @xmalloc(i64 %tmp)
  ret i8* %call
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #2

; Function Attrs: nounwind
declare i8* @realloc(i8*, i64) #2

; Function Attrs: nounwind uwtable
define i8* @x2realloc(i8* %p, i64* %pn) #0 {
entry:
  %p.addr = alloca i8*, align 8
  %pn.addr = alloca i64*, align 8
  %"reg2mem alloca point" = bitcast i32 0 to i32
  store i8* %p, i8** %p.addr, align 8
  store i64* %pn, i64** %pn.addr, align 8
  %tmp = load i8*, i8** %p.addr, align 8
  %tmp1 = load i64*, i64** %pn.addr, align 8
  %call = call i8* @x2nrealloc(i8* %tmp, i64* %tmp1, i64 1)
  ret i8* %call
}

; Function Attrs: nounwind uwtable
define i8* @xzalloc(i64 %s) #0 {
entry:
  %s.addr = alloca i64, align 8
  %"reg2mem alloca point" = bitcast i32 0 to i32
  store i64 %s, i64* %s.addr, align 8
  %tmp = load i64, i64* %s.addr, align 8
  %call = call i8* @xmalloc(i64 %tmp)
  %tmp1 = load i64, i64* %s.addr, align 8
  call void @llvm.memset.p0i8.i64(i8* %call, i8 0, i64 %tmp1, i32 1, i1 false)
  ret i8* %call
}

; Function Attrs: nounwind uwtable
define i8* @xcalloc(i64 %n, i64 %s) #0 {
entry:
  %n.addr = alloca i64, align 8
  %s.addr = alloca i64, align 8
  %p = alloca i8*, align 8
  %"reg2mem alloca point" = bitcast i32 0 to i32
  store i64 %n, i64* %n.addr, align 8
  store i64 %s, i64* %s.addr, align 8
  %tmp = load i64, i64* %n.addr, align 8
  %tmp1 = load i64, i64* %s.addr, align 8
  %call = call noalias i8* @calloc(i64 %tmp, i64 %tmp1) #8
  store i8* %call, i8** %p, align 8
  %tobool = icmp ne i8* %call, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @xalloc_die() #15
  unreachable

if.end:                                           ; preds = %entry
  %tmp2 = load i8*, i8** %p, align 8
  ret i8* %tmp2
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #2

; Function Attrs: nounwind uwtable
define i8* @xmemdup(i8* %p, i64 %s) #0 {
entry:
  %p.addr = alloca i8*, align 8
  %s.addr = alloca i64, align 8
  %"reg2mem alloca point" = bitcast i32 0 to i32
  store i8* %p, i8** %p.addr, align 8
  store i64 %s, i64* %s.addr, align 8
  %tmp = load i64, i64* %s.addr, align 8
  %call = call i8* @xmalloc(i64 %tmp)
  %tmp1 = load i8*, i8** %p.addr, align 8
  %tmp2 = load i64, i64* %s.addr, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %call, i8* %tmp1, i64 %tmp2, i32 1, i1 false)
  ret i8* %call
}

; Function Attrs: nounwind uwtable
define i8* @xstrdup(i8* %string) #0 {
entry:
  %string.addr = alloca i8*, align 8
  %"reg2mem alloca point" = bitcast i32 0 to i32
  store i8* %string, i8** %string.addr, align 8
  %tmp = load i8*, i8** %string.addr, align 8
  %tmp1 = load i8*, i8** %string.addr, align 8
  %call = call i64 @strlen(i8* %tmp1) #13
  %add = add i64 %call, 1
  %call1 = call i8* @xmemdup(i8* %tmp, i64 %add)
  ret i8* %call1
}

; Function Attrs: nounwind uwtable
define i32 @xstrtoul(i8* %s, i8** %ptr, i32 %strtol_base, i64* %val, i8* %valid_suffixes) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca i8*, align 8
  %ptr.addr = alloca i8**, align 8
  %strtol_base.addr = alloca i32, align 4
  %val.addr = alloca i64*, align 8
  %valid_suffixes.addr = alloca i8*, align 8
  %t_ptr = alloca i8*, align 8
  %p = alloca i8**, align 8
  %tmp = alloca i64, align 8
  %err = alloca i32, align 4
  %q = alloca i8*, align 8
  %ch = alloca i8, align 1
  %base = alloca i32, align 4
  %suffixes = alloca i32, align 4
  %overflow = alloca i32, align 4
  %tmp4.reg2mem = alloca i8**
  %cond.reg2mem = alloca i8**
  %"reg2mem alloca point" = bitcast i32 0 to i32
  store i8* %s, i8** %s.addr, align 8
  store i8** %ptr, i8*** %ptr.addr, align 8
  store i32 %strtol_base, i32* %strtol_base.addr, align 4
  store i64* %val, i64** %val.addr, align 8
  store i8* %valid_suffixes, i8** %valid_suffixes.addr, align 8
  store i32 0, i32* %err, align 4
  %tmp1 = load i32, i32* %strtol_base.addr, align 4
  %cmp = icmp sle i32 0, %tmp1
  br i1 %cmp, label %land.lhs.true, label %entry.if.else_crit_edge

entry.if.else_crit_edge:                          ; preds = %entry
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %tmp2 = load i32, i32* %strtol_base.addr, align 4
  %cmp2 = icmp sle i32 %tmp2, 36
  br i1 %cmp2, label %if.then, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  br label %if.else

if.then:                                          ; preds = %land.lhs.true
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  call void @__assert_fail(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str131, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str1132, i32 0, i32 0), i32 83, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @__PRETTY_FUNCTION__.xstrtoul, i32 0, i32 0)) #12
  unreachable

if.end:                                           ; preds = %if.then
  %tmp3 = load i8**, i8*** %ptr.addr, align 8
  %tobool = icmp ne i8** %tmp3, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %tmp4 = load i8**, i8*** %ptr.addr, align 8
  store i8** %tmp4, i8*** %tmp4.reg2mem
  %tmp4.reload = load i8**, i8*** %tmp4.reg2mem
  store i8** %tmp4.reload, i8*** %cond.reg2mem
  br label %cond.end

cond.false:                                       ; preds = %if.end
  store i8** %t_ptr, i8*** %cond.reg2mem
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond.reload = load i8**, i8*** %cond.reg2mem
  store i8** %cond.reload, i8*** %p, align 8
  %tmp5 = load i8*, i8** %s.addr, align 8
  store i8* %tmp5, i8** %q, align 8
  %tmp6 = load i8*, i8** %q, align 8
  %tmp7 = load i8, i8* %tmp6, align 1
  store i8 %tmp7, i8* %ch, align 1
  br label %while.cond

while.cond:                                       ; preds = %while.body, %cond.end
  %tmp8 = load i8, i8* %ch, align 1
  %conv = zext i8 %tmp8 to i32
  %idxprom = sext i32 %conv to i64
  %call = call i16** @__ctype_b_loc() #14
  %tmp9 = load i16*, i16** %call, align 8
  %arrayidx = getelementptr inbounds i16, i16* %tmp9, i64 %idxprom
  %tmp10 = load i16, i16* %arrayidx, align 2
  %conv5 = zext i16 %tmp10 to i32
  %and = and i32 %conv5, 8192
  %tobool6 = icmp ne i32 %and, 0
  br i1 %tobool6, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %tmp11 = load i8*, i8** %q, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %tmp11, i32 1
  store i8* %incdec.ptr, i8** %q, align 8
  %tmp12 = load i8, i8* %incdec.ptr, align 1
  store i8 %tmp12, i8* %ch, align 1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %tmp13 = load i8, i8* %ch, align 1
  %conv7 = zext i8 %tmp13 to i32
  %cmp8 = icmp eq i32 %conv7, 45
  br i1 %cmp8, label %if.then10, label %if.end11

if.then10:                                        ; preds = %while.end
  store i32 4, i32* %retval
  br label %return

if.end11:                                         ; preds = %while.end
  %call12 = call i32* @__errno_location() #14
  store i32 0, i32* %call12, align 4
  %tmp14 = load i8*, i8** %s.addr, align 8
  %tmp15 = load i8**, i8*** %p, align 8
  %tmp16 = load i32, i32* %strtol_base.addr, align 4
  %call13 = call i64 @strtoul(i8* %tmp14, i8** %tmp15, i32 %tmp16) #8
  store i64 %call13, i64* %tmp, align 8
  %tmp17 = load i8**, i8*** %p, align 8
  %tmp18 = load i8*, i8** %tmp17, align 8
  %tmp19 = load i8*, i8** %s.addr, align 8
  %cmp14 = icmp eq i8* %tmp18, %tmp19
  br i1 %cmp14, label %if.then16, label %if.else28

if.then16:                                        ; preds = %if.end11
  %tmp20 = load i8*, i8** %valid_suffixes.addr, align 8
  %tobool17 = icmp ne i8* %tmp20, null
  br i1 %tobool17, label %land.lhs.true18, label %if.then16.if.else26_crit_edge

if.then16.if.else26_crit_edge:                    ; preds = %if.then16
  br label %if.else26

land.lhs.true18:                                  ; preds = %if.then16
  %tmp21 = load i8**, i8*** %p, align 8
  %tmp22 = load i8*, i8** %tmp21, align 8
  %tmp23 = load i8, i8* %tmp22, align 1
  %conv19 = sext i8 %tmp23 to i32
  %tobool20 = icmp ne i32 %conv19, 0
  br i1 %tobool20, label %land.lhs.true21, label %land.lhs.true18.if.else26_crit_edge

land.lhs.true18.if.else26_crit_edge:              ; preds = %land.lhs.true18
  br label %if.else26

land.lhs.true21:                                  ; preds = %land.lhs.true18
  %tmp24 = load i8*, i8** %valid_suffixes.addr, align 8
  %tmp25 = load i8**, i8*** %p, align 8
  %tmp26 = load i8*, i8** %tmp25, align 8
  %tmp27 = load i8, i8* %tmp26, align 1
  %conv22 = sext i8 %tmp27 to i32
  %call23 = call i8* @strchr(i8* %tmp24, i32 %conv22) #13
  %tobool24 = icmp ne i8* %call23, null
  br i1 %tobool24, label %if.then25, label %land.lhs.true21.if.else26_crit_edge

land.lhs.true21.if.else26_crit_edge:              ; preds = %land.lhs.true21
  br label %if.else26

if.then25:                                        ; preds = %land.lhs.true21
  store i64 1, i64* %tmp, align 8
  br label %if.end27

if.else26:                                        ; preds = %land.lhs.true21.if.else26_crit_edge, %land.lhs.true18.if.else26_crit_edge, %if.then16.if.else26_crit_edge
  store i32 4, i32* %retval
  br label %return

if.end27:                                         ; preds = %if.then25
  br label %if.end39

if.else28:                                        ; preds = %if.end11
  %call29 = call i32* @__errno_location() #14
  %tmp28 = load i32, i32* %call29, align 4
  %cmp30 = icmp ne i32 %tmp28, 0
  br i1 %cmp30, label %if.then32, label %if.else28.if.end38_crit_edge

if.else28.if.end38_crit_edge:                     ; preds = %if.else28
  br label %if.end38

if.then32:                                        ; preds = %if.else28
  %call33 = call i32* @__errno_location() #14
  %tmp29 = load i32, i32* %call33, align 4
  %cmp34 = icmp ne i32 %tmp29, 34
  br i1 %cmp34, label %if.then36, label %if.end37

if.then36:                                        ; preds = %if.then32
  store i32 4, i32* %retval
  br label %return

if.end37:                                         ; preds = %if.then32
  store i32 1, i32* %err, align 4
  br label %if.end38

if.end38:                                         ; preds = %if.else28.if.end38_crit_edge, %if.end37
  br label %if.end39

if.end39:                                         ; preds = %if.end38, %if.end27
  %tmp30 = load i8*, i8** %valid_suffixes.addr, align 8
  %tobool40 = icmp ne i8* %tmp30, null
  br i1 %tobool40, label %if.end42, label %if.then41

if.then41:                                        ; preds = %if.end39
  %tmp31 = load i64, i64* %tmp, align 8
  %tmp32 = load i64*, i64** %val.addr, align 8
  store i64 %tmp31, i64* %tmp32, align 8
  %tmp33 = load i32, i32* %err, align 4
  store i32 %tmp33, i32* %retval
  br label %return

if.end42:                                         ; preds = %if.end39
  %tmp34 = load i8**, i8*** %p, align 8
  %tmp35 = load i8*, i8** %tmp34, align 8
  %tmp36 = load i8, i8* %tmp35, align 1
  %conv43 = sext i8 %tmp36 to i32
  %cmp44 = icmp ne i32 %conv43, 0
  br i1 %cmp44, label %if.then46, label %if.end42.if.end101_crit_edge

if.end42.if.end101_crit_edge:                     ; preds = %if.end42
  br label %if.end101

if.then46:                                        ; preds = %if.end42
  store i32 1024, i32* %base, align 4
  store i32 1, i32* %suffixes, align 4
  %tmp37 = load i8*, i8** %valid_suffixes.addr, align 8
  %tmp38 = load i8**, i8*** %p, align 8
  %tmp39 = load i8*, i8** %tmp38, align 8
  %tmp40 = load i8, i8* %tmp39, align 1
  %conv50 = sext i8 %tmp40 to i32
  %call51 = call i8* @strchr(i8* %tmp37, i32 %conv50) #13
  %tobool52 = icmp ne i8* %call51, null
  br i1 %tobool52, label %if.end54, label %if.then53

if.then53:                                        ; preds = %if.then46
  %tmp41 = load i64, i64* %tmp, align 8
  %tmp42 = load i64*, i64** %val.addr, align 8
  store i64 %tmp41, i64* %tmp42, align 8
  %tmp43 = load i32, i32* %err, align 4
  %or = or i32 %tmp43, 2
  store i32 %or, i32* %retval
  br label %return

if.end54:                                         ; preds = %if.then46
  %tmp44 = load i8*, i8** %valid_suffixes.addr, align 8
  %call55 = call i8* @strchr(i8* %tmp44, i32 48) #13
  %tobool56 = icmp ne i8* %call55, null
  br i1 %tobool56, label %if.then57, label %if.end54.if.end69_crit_edge

if.end54.if.end69_crit_edge:                      ; preds = %if.end54
  br label %if.end69

if.then57:                                        ; preds = %if.end54
  %tmp45 = load i8**, i8*** %p, align 8
  %arrayidx58 = getelementptr inbounds i8*, i8** %tmp45, i64 0
  %tmp46 = load i8*, i8** %arrayidx58, align 8
  %arrayidx59 = getelementptr inbounds i8, i8* %tmp46, i64 1
  %tmp47 = load i8, i8* %arrayidx59, align 1
  %conv60 = sext i8 %tmp47 to i32
  switch i32 %conv60, label %if.then57.sw.epilog_crit_edge [
    i32 105, label %sw.bb
    i32 66, label %if.then57.sw.bb68_crit_edge
    i32 68, label %if.then57.sw.bb68_crit_edge80
  ]

if.then57.sw.bb68_crit_edge80:                    ; preds = %if.then57
  br label %sw.bb68

if.then57.sw.bb68_crit_edge:                      ; preds = %if.then57
  br label %sw.bb68

if.then57.sw.epilog_crit_edge:                    ; preds = %if.then57
  br label %sw.epilog

sw.bb:                                            ; preds = %if.then57
  %tmp48 = load i8**, i8*** %p, align 8
  %arrayidx61 = getelementptr inbounds i8*, i8** %tmp48, i64 0
  %tmp49 = load i8*, i8** %arrayidx61, align 8
  %arrayidx62 = getelementptr inbounds i8, i8* %tmp49, i64 2
  %tmp50 = load i8, i8* %arrayidx62, align 1
  %conv63 = sext i8 %tmp50 to i32
  %cmp64 = icmp eq i32 %conv63, 66
  br i1 %cmp64, label %if.then66, label %sw.bb.if.end67_crit_edge

sw.bb.if.end67_crit_edge:                         ; preds = %sw.bb
  br label %if.end67

if.then66:                                        ; preds = %sw.bb
  %tmp51 = load i32, i32* %suffixes, align 4
  %add = add nsw i32 %tmp51, 2
  store i32 %add, i32* %suffixes, align 4
  br label %if.end67

if.end67:                                         ; preds = %sw.bb.if.end67_crit_edge, %if.then66
  br label %sw.epilog

sw.bb68:                                          ; preds = %if.then57.sw.bb68_crit_edge80, %if.then57.sw.bb68_crit_edge
  store i32 1000, i32* %base, align 4
  %tmp52 = load i32, i32* %suffixes, align 4
  %inc = add nsw i32 %tmp52, 1
  store i32 %inc, i32* %suffixes, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then57.sw.epilog_crit_edge, %sw.bb68, %if.end67
  br label %if.end69

if.end69:                                         ; preds = %if.end54.if.end69_crit_edge, %sw.epilog
  %tmp53 = load i8**, i8*** %p, align 8
  %tmp54 = load i8*, i8** %tmp53, align 8
  %tmp55 = load i8, i8* %tmp54, align 1
  %conv70 = sext i8 %tmp55 to i32
  switch i32 %conv70, label %sw.default [
    i32 98, label %sw.bb71
    i32 66, label %sw.bb73
    i32 99, label %sw.bb75
    i32 69, label %sw.bb76
    i32 71, label %if.end69.sw.bb78_crit_edge
    i32 103, label %if.end69.sw.bb78_crit_edge81
    i32 107, label %if.end69.sw.bb80_crit_edge
    i32 75, label %if.end69.sw.bb80_crit_edge82
    i32 77, label %if.end69.sw.bb82_crit_edge
    i32 109, label %if.end69.sw.bb82_crit_edge83
    i32 80, label %sw.bb84
    i32 84, label %if.end69.sw.bb86_crit_edge
    i32 116, label %if.end69.sw.bb86_crit_edge84
    i32 119, label %sw.bb88
    i32 89, label %sw.bb90
    i32 90, label %sw.bb92
  ]

if.end69.sw.bb86_crit_edge84:                     ; preds = %if.end69
  br label %sw.bb86

if.end69.sw.bb86_crit_edge:                       ; preds = %if.end69
  br label %sw.bb86

if.end69.sw.bb82_crit_edge83:                     ; preds = %if.end69
  br label %sw.bb82

if.end69.sw.bb82_crit_edge:                       ; preds = %if.end69
  br label %sw.bb82

if.end69.sw.bb80_crit_edge82:                     ; preds = %if.end69
  br label %sw.bb80

if.end69.sw.bb80_crit_edge:                       ; preds = %if.end69
  br label %sw.bb80

if.end69.sw.bb78_crit_edge81:                     ; preds = %if.end69
  br label %sw.bb78

if.end69.sw.bb78_crit_edge:                       ; preds = %if.end69
  br label %sw.bb78

sw.bb71:                                          ; preds = %if.end69
  %call72 = call i32 @bkm_scale(i64* %tmp, i32 512)
  store i32 %call72, i32* %overflow, align 4
  br label %sw.epilog95

sw.bb73:                                          ; preds = %if.end69
  %call74 = call i32 @bkm_scale(i64* %tmp, i32 1024)
  store i32 %call74, i32* %overflow, align 4
  br label %sw.epilog95

sw.bb75:                                          ; preds = %if.end69
  store i32 0, i32* %overflow, align 4
  br label %sw.epilog95

sw.bb76:                                          ; preds = %if.end69
  %tmp56 = load i32, i32* %base, align 4
  %call77 = call i32 @bkm_scale_by_power(i64* %tmp, i32 %tmp56, i32 6)
  store i32 %call77, i32* %overflow, align 4
  br label %sw.epilog95

sw.bb78:                                          ; preds = %if.end69.sw.bb78_crit_edge81, %if.end69.sw.bb78_crit_edge
  %tmp57 = load i32, i32* %base, align 4
  %call79 = call i32 @bkm_scale_by_power(i64* %tmp, i32 %tmp57, i32 3)
  store i32 %call79, i32* %overflow, align 4
  br label %sw.epilog95

sw.bb80:                                          ; preds = %if.end69.sw.bb80_crit_edge82, %if.end69.sw.bb80_crit_edge
  %tmp58 = load i32, i32* %base, align 4
  %call81 = call i32 @bkm_scale_by_power(i64* %tmp, i32 %tmp58, i32 1)
  store i32 %call81, i32* %overflow, align 4
  br label %sw.epilog95

sw.bb82:                                          ; preds = %if.end69.sw.bb82_crit_edge83, %if.end69.sw.bb82_crit_edge
  %tmp59 = load i32, i32* %base, align 4
  %call83 = call i32 @bkm_scale_by_power(i64* %tmp, i32 %tmp59, i32 2)
  store i32 %call83, i32* %overflow, align 4
  br label %sw.epilog95

sw.bb84:                                          ; preds = %if.end69
  %tmp60 = load i32, i32* %base, align 4
  %call85 = call i32 @bkm_scale_by_power(i64* %tmp, i32 %tmp60, i32 5)
  store i32 %call85, i32* %overflow, align 4
  br label %sw.epilog95

sw.bb86:                                          ; preds = %if.end69.sw.bb86_crit_edge84, %if.end69.sw.bb86_crit_edge
  %tmp61 = load i32, i32* %base, align 4
  %call87 = call i32 @bkm_scale_by_power(i64* %tmp, i32 %tmp61, i32 4)
  store i32 %call87, i32* %overflow, align 4
  br label %sw.epilog95

sw.bb88:                                          ; preds = %if.end69
  %call89 = call i32 @bkm_scale(i64* %tmp, i32 2)
  store i32 %call89, i32* %overflow, align 4
  br label %sw.epilog95

sw.bb90:                                          ; preds = %if.end69
  %tmp62 = load i32, i32* %base, align 4
  %call91 = call i32 @bkm_scale_by_power(i64* %tmp, i32 %tmp62, i32 8)
  store i32 %call91, i32* %overflow, align 4
  br label %sw.epilog95

sw.bb92:                                          ; preds = %if.end69
  %tmp63 = load i32, i32* %base, align 4
  %call93 = call i32 @bkm_scale_by_power(i64* %tmp, i32 %tmp63, i32 7)
  store i32 %call93, i32* %overflow, align 4
  br label %sw.epilog95

sw.default:                                       ; preds = %if.end69
  %tmp64 = load i64, i64* %tmp, align 8
  %tmp65 = load i64*, i64** %val.addr, align 8
  store i64 %tmp64, i64* %tmp65, align 8
  %tmp66 = load i32, i32* %err, align 4
  %or94 = or i32 %tmp66, 2
  store i32 %or94, i32* %retval
  br label %return

sw.epilog95:                                      ; preds = %sw.bb92, %sw.bb90, %sw.bb88, %sw.bb86, %sw.bb84, %sw.bb82, %sw.bb80, %sw.bb78, %sw.bb76, %sw.bb75, %sw.bb73, %sw.bb71
  %tmp67 = load i32, i32* %overflow, align 4
  %tmp68 = load i32, i32* %err, align 4
  %or96 = or i32 %tmp68, %tmp67
  store i32 %or96, i32* %err, align 4
  %tmp69 = load i32, i32* %suffixes, align 4
  %tmp70 = load i8**, i8*** %p, align 8
  %tmp71 = load i8*, i8** %tmp70, align 8
  %idx.ext = sext i32 %tmp69 to i64
  %add.ptr = getelementptr inbounds i8, i8* %tmp71, i64 %idx.ext
  store i8* %add.ptr, i8** %tmp70, align 8
  %tmp72 = load i8**, i8*** %p, align 8
  %tmp73 = load i8*, i8** %tmp72, align 8
  %tmp74 = load i8, i8* %tmp73, align 1
  %tobool97 = icmp ne i8 %tmp74, 0
  br i1 %tobool97, label %if.then98, label %sw.epilog95.if.end100_crit_edge

sw.epilog95.if.end100_crit_edge:                  ; preds = %sw.epilog95
  br label %if.end100

if.then98:                                        ; preds = %sw.epilog95
  %tmp75 = load i32, i32* %err, align 4
  %or99 = or i32 %tmp75, 2
  store i32 %or99, i32* %err, align 4
  br label %if.end100

if.end100:                                        ; preds = %sw.epilog95.if.end100_crit_edge, %if.then98
  br label %if.end101

if.end101:                                        ; preds = %if.end42.if.end101_crit_edge, %if.end100
  %tmp76 = load i64, i64* %tmp, align 8
  %tmp77 = load i64*, i64** %val.addr, align 8
  store i64 %tmp76, i64* %tmp77, align 8
  %tmp78 = load i32, i32* %err, align 4
  store i32 %tmp78, i32* %retval
  br label %return

return:                                           ; preds = %if.end101, %sw.default, %if.then53, %if.then41, %if.then36, %if.else26, %if.then10
  %tmp79 = load i32, i32* %retval
  ret i32 %tmp79
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) #4

; Function Attrs: nounwind
declare i64 @strtoul(i8*, i8**, i32) #2

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #5

; Function Attrs: nounwind uwtable
define internal i32 @bkm_scale(i64* %x, i32 %scale_factor) #0 {
entry:
  %retval = alloca i32, align 4
  %x.addr = alloca i64*, align 8
  %scale_factor.addr = alloca i32, align 4
  %"reg2mem alloca point" = bitcast i32 0 to i32
  store i64* %x, i64** %x.addr, align 8
  store i32 %scale_factor, i32* %scale_factor.addr, align 4
  %tmp = load i32, i32* %scale_factor.addr, align 4
  %conv = sext i32 %tmp to i64
  %div = udiv i64 -1, %conv
  %tmp1 = load i64*, i64** %x.addr, align 8
  %tmp2 = load i64, i64* %tmp1, align 8
  %cmp = icmp ult i64 %div, %tmp2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %tmp3 = load i64*, i64** %x.addr, align 8
  store i64 -1, i64* %tmp3, align 8
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %tmp4 = load i32, i32* %scale_factor.addr, align 4
  %conv2 = sext i32 %tmp4 to i64
  %tmp5 = load i64*, i64** %x.addr, align 8
  %tmp6 = load i64, i64* %tmp5, align 8
  %mul = mul i64 %tmp6, %conv2
  store i64 %mul, i64* %tmp5, align 8
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %tmp7 = load i32, i32* %retval
  ret i32 %tmp7
}

; Function Attrs: nounwind uwtable
define internal i32 @bkm_scale_by_power(i64* %x, i32 %base, i32 %power) #0 {
entry:
  %x.addr = alloca i64*, align 8
  %base.addr = alloca i32, align 4
  %power.addr = alloca i32, align 4
  %err = alloca i32, align 4
  %"reg2mem alloca point" = bitcast i32 0 to i32
  store i64* %x, i64** %x.addr, align 8
  store i32 %base, i32* %base.addr, align 4
  store i32 %power, i32* %power.addr, align 4
  store i32 0, i32* %err, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %tmp = load i32, i32* %power.addr, align 4
  %dec = add nsw i32 %tmp, -1
  store i32 %dec, i32* %power.addr, align 4
  %tobool = icmp ne i32 %tmp, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %tmp1 = load i64*, i64** %x.addr, align 8
  %tmp2 = load i32, i32* %base.addr, align 4
  %call = call i32 @bkm_scale(i64* %tmp1, i32 %tmp2)
  %tmp3 = load i32, i32* %err, align 4
  %or = or i32 %tmp3, %call
  store i32 %or, i32* %err, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %tmp4 = load i32, i32* %err, align 4
  ret i32 %tmp4
}

; Function Attrs: nounwind uwtable
define void @fseterr(%struct._IO_FILE* %fp) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %"reg2mem alloca point" = bitcast i32 0 to i32
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  %tmp = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %tmp, i32 0, i32 0
  %tmp1 = load i32, i32* %_flags, align 4
  %or = or i32 %tmp1, 32
  store i32 %or, i32* %_flags, align 4
  ret void
}

; Function Attrs: noreturn nounwind uwtable
define void @xalloc_die() #10 {
entry:
  %"reg2mem alloca point" = bitcast i32 0 to i32
  %tmp = load volatile i32, i32* @exit_failure, align 4
  %call = call i8* @gettext(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str1138, i32 0, i32 0)) #8
  call void (i32, i32, i8*, ...) @error(i32 %tmp, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str137, i32 0, i32 0), i8* %call)
  call void @abort() #12
  unreachable

return:                                           ; No predecessors!
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @close_stream(%struct._IO_FILE* %stream) #0 {
entry:
  %retval = alloca i32, align 4
  %stream.addr = alloca %struct._IO_FILE*, align 8
  %some_pending = alloca i8, align 1
  %prev_fail = alloca i8, align 1
  %fclose_fail = alloca i8, align 1
  %"reg2mem alloca point" = bitcast i32 0 to i32
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8
  %tmp = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call = call i64 @__fpending(%struct._IO_FILE* %tmp) #8
  %cmp = icmp ne i64 %call, 0
  %frombool = zext i1 %cmp to i8
  store i8 %frombool, i8* %some_pending, align 1
  %tmp1 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call1 = call i32 @ferror_unlocked(%struct._IO_FILE* %tmp1) #8
  %cmp2 = icmp ne i32 %call1, 0
  %frombool3 = zext i1 %cmp2 to i8
  store i8 %frombool3, i8* %prev_fail, align 1
  %tmp2 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call4 = call i32 @fclose(%struct._IO_FILE* %tmp2)
  %cmp5 = icmp ne i32 %call4, 0
  %frombool6 = zext i1 %cmp5 to i8
  store i8 %frombool6, i8* %fclose_fail, align 1
  %tmp3 = load i8, i8* %prev_fail, align 1
  %tobool = trunc i8 %tmp3 to i1
  br i1 %tobool, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %tmp4 = load i8, i8* %fclose_fail, align 1
  %tobool7 = trunc i8 %tmp4 to i1
  br i1 %tobool7, label %land.lhs.true, label %lor.lhs.false.if.end15_crit_edge

lor.lhs.false.if.end15_crit_edge:                 ; preds = %lor.lhs.false
  br label %if.end15

land.lhs.true:                                    ; preds = %lor.lhs.false
  %tmp5 = load i8, i8* %some_pending, align 1
  %tobool8 = trunc i8 %tmp5 to i1
  br i1 %tobool8, label %land.lhs.true.if.then_crit_edge, label %lor.lhs.false9

land.lhs.true.if.then_crit_edge:                  ; preds = %land.lhs.true
  br label %if.then

lor.lhs.false9:                                   ; preds = %land.lhs.true
  %call10 = call i32* @__errno_location() #14
  %tmp6 = load i32, i32* %call10, align 4
  %cmp11 = icmp ne i32 %tmp6, 9
  br i1 %cmp11, label %lor.lhs.false9.if.then_crit_edge, label %lor.lhs.false9.if.end15_crit_edge

lor.lhs.false9.if.end15_crit_edge:                ; preds = %lor.lhs.false9
  br label %if.end15

lor.lhs.false9.if.then_crit_edge:                 ; preds = %lor.lhs.false9
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false9.if.then_crit_edge, %land.lhs.true.if.then_crit_edge, %entry.if.then_crit_edge
  %tmp7 = load i8, i8* %fclose_fail, align 1
  %tobool12 = trunc i8 %tmp7 to i1
  br i1 %tobool12, label %if.then.if.end_crit_edge, label %if.then13

if.then.if.end_crit_edge:                         ; preds = %if.then
  br label %if.end

if.then13:                                        ; preds = %if.then
  %call14 = call i32* @__errno_location() #14
  store i32 0, i32* %call14, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.if.end_crit_edge, %if.then13
  store i32 -1, i32* %retval
  br label %return

if.end15:                                         ; preds = %lor.lhs.false9.if.end15_crit_edge, %lor.lhs.false.if.end15_crit_edge
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end15, %if.end
  %tmp8 = load i32, i32* %retval
  ret i32 %tmp8
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) #2

; Function Attrs: nounwind uwtable
define i8* @vasnprintf(i8* %resultbuf, i64* %lengthp, i8* %format, %struct.__va_list_tag* %args) #0 {
entry:
  %retval = alloca i8*, align 8
  %resultbuf.addr = alloca i8*, align 8
  %lengthp.addr = alloca i64*, align 8
  %format.addr = alloca i8*, align 8
  %args.addr = alloca %struct.__va_list_tag*, align 8
  %d = alloca %struct.char_directives, align 8
  %a = alloca %struct.arguments, align 8
  %buf_neededlength = alloca i64, align 8
  %buf = alloca i8*, align 8
  %buf_malloced = alloca i8*, align 8
  %cp = alloca i8*, align 8
  %i = alloca i64, align 8
  %dp = alloca %struct.char_directive*, align 8
  %result = alloca i8*, align 8
  %allocated = alloca i64, align 8
  %length = alloca i64, align 8
  %buf_memsize = alloca i64, align 8
  %n = alloca i64, align 8
  %augmented_length = alloca i64, align 8
  %memory_size = alloca i64, align 8
  %memory = alloca i8*, align 8
  %augmented_length78 = alloca i64, align 8
  %memory_size87 = alloca i64, align 8
  %memory88 = alloca i8*, align 8
  %flags = alloca i32, align 4
  %has_width = alloca i32, align 4
  %width = alloca i64, align 8
  %has_precision = alloca i32, align 4
  %precision = alloca i64, align 8
  %tmp_length = alloca i64, align 8
  %tmpbuf = alloca [700 x i8], align 16
  %tmp = alloca i8*, align 8
  %pad_ptr = alloca i8*, align 8
  %p = alloca i8*, align 8
  %arg246 = alloca i32, align 4
  %digitp = alloca i8*, align 8
  %arg292 = alloca i32, align 4
  %digitp313 = alloca i8*, align 8
  %tmp_memsize = alloca i64, align 8
  %arg369 = alloca x86_fp80, align 16
  %sign = alloca i32, align 4
  %oldcw = alloca i16, align 2
  %_cw = alloca i16, align 2
  %tmp400 = alloca i16, align 2
  %_ncw = alloca i16, align 2
  %_ncw458 = alloca i16, align 2
  %pad = alloca i64, align 8
  %end = alloca i8*, align 8
  %q = alloca i8*, align 8
  %q507 = alloca i8*, align 8
  %count527 = alloca i64, align 8
  %n540 = alloca i64, align 8
  %memory_size546 = alloca i64, align 8
  %memory548 = alloca i8*, align 8
  %type610 = alloca i32, align 4
  %flags616 = alloca i32, align 4
  %fbp = alloca i8*, align 8
  %prefix_count = alloca i32, align 4
  %prefixes = alloca [2 x i32], align 4
  %n658 = alloca i64, align 8
  %n674 = alloca i64, align 8
  %memory_size739 = alloca i64, align 8
  %memory741 = alloca i8*, align 8
  %count797 = alloca i32, align 4
  %retcount = alloca i32, align 4
  %maxlen = alloca i64, align 8
  %arg808 = alloca i32, align 4
  %arg830 = alloca i32, align 4
  %arg852 = alloca i32, align 4
  %arg874 = alloca i32, align 4
  %arg896 = alloca i32, align 4
  %arg918 = alloca i32, align 4
  %arg939 = alloca i64, align 8
  %arg960 = alloca i64, align 8
  %arg981 = alloca i64, align 8
  %arg1002 = alloca i64, align 8
  %arg1023 = alloca double, align 8
  %arg1044 = alloca x86_fp80, align 16
  %arg1066 = alloca i32, align 4
  %arg1087 = alloca i32, align 4
  %arg1108 = alloca i8*, align 8
  %arg1129 = alloca i32*, align 8
  %arg1150 = alloca i8*, align 8
  %bigger_need = alloca i64, align 8
  %memory_size1214 = alloca i64, align 8
  %memory1216 = alloca i8*, align 8
  %n1303 = alloca i64, align 8
  %memory_size1321 = alloca i64, align 8
  %memory1323 = alloca i8*, align 8
  %memory_size1390 = alloca i64, align 8
  %memory1392 = alloca i8*, align 8
  %memory1454 = alloca i8*, align 8
  %mul1415.reg2mem = alloca i64
  %cond1402.reg2mem = alloca i64
  %mul1399.reg2mem = alloca i64
  %mul1344.reg2mem = alloca i64
  %cond1333.reg2mem = alloca i64
  %mul1330.reg2mem = alloca i64
  %mul1312.reg2mem = alloca i64
  %call1308.reg2mem = alloca i64
  %mul1237.reg2mem = alloca i64
  %cond1226.reg2mem = alloca i64
  %mul1223.reg2mem = alloca i64
  %mul1205.reg2mem = alloca i64
  %mul764.reg2mem = alloca i64
  %cond751.reg2mem = alloca i64
  %mul748.reg2mem = alloca i64
  %mul569.reg2mem = alloca i64
  %cond558.reg2mem = alloca i64
  %mul555.reg2mem = alloca i64
  %mul354.reg2mem = alloca i64
  %mul322.reg2mem = alloca i64
  %mul272.reg2mem = alloca i64
  %mul109.reg2mem = alloca i64
  %cond98.reg2mem = alloca i64
  %mul95.reg2mem = alloca i64
  %mul49.reg2mem = alloca i64
  %cond40.reg2mem = alloca i64
  %mul37.reg2mem = alloca i64
  %mul13.reg2mem = alloca i64
  %cond1418.reg2mem = alloca i64
  %cond1405.reg2mem = alloca i64
  %cond1402.reg2mem1016 = alloca i64
  %cond1347.reg2mem = alloca i64
  %cond1336.reg2mem = alloca i64
  %cond1333.reg2mem1018 = alloca i64
  %cond1315.reg2mem = alloca i64
  %cond1240.reg2mem = alloca i64
  %cond1229.reg2mem = alloca i64
  %cond1226.reg2mem1020 = alloca i64
  %cond1208.reg2mem = alloca i64
  %cond767.reg2mem = alloca i64
  %cond754.reg2mem = alloca i64
  %cond751.reg2mem1022 = alloca i64
  %cond572.reg2mem = alloca i64
  %cond561.reg2mem = alloca i64
  %cond558.reg2mem1024 = alloca i64
  %cond357.reg2mem = alloca i64
  %cond325.reg2mem = alloca i64
  %cond275.reg2mem = alloca i64
  %cond112.reg2mem = alloca i64
  %cond101.reg2mem = alloca i64
  %cond98.reg2mem1026 = alloca i64
  %cond52.reg2mem = alloca i64
  %cond43.reg2mem = alloca i64
  %cond40.reg2mem1028 = alloca i64
  %cond.reg2mem = alloca i64
  %"reg2mem alloca point" = bitcast i32 0 to i32
  store i8* %resultbuf, i8** %resultbuf.addr, align 8
  store i64* %lengthp, i64** %lengthp.addr, align 8
  store i8* %format, i8** %format.addr, align 8
  store %struct.__va_list_tag* %args, %struct.__va_list_tag** %args.addr, align 8
  %tmp1 = load i8*, i8** %format.addr, align 8
  %call = call i32 @printf_parse(i8* %tmp1, %struct.char_directives* %d, %struct.arguments* %a)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  %tmp2 = load %struct.__va_list_tag*, %struct.__va_list_tag** %args.addr, align 8
  %call1 = call i32 @printf_fetchargs(%struct.__va_list_tag* %tmp2, %struct.arguments* %a)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.then3, label %if.end8

if.then3:                                         ; preds = %if.end
  %dir = getelementptr inbounds %struct.char_directives, %struct.char_directives* %d, i32 0, i32 1
  %tmp3 = load %struct.char_directive*, %struct.char_directive** %dir, align 8
  %tmp4 = bitcast %struct.char_directive* %tmp3 to i8*
  call void @free(i8* %tmp4) #8
  %arg = getelementptr inbounds %struct.arguments, %struct.arguments* %a, i32 0, i32 1
  %tmp5 = load %struct.argument*, %struct.argument** %arg, align 8
  %tobool = icmp ne %struct.argument* %tmp5, null
  br i1 %tobool, label %if.then4, label %if.then3.if.end6_crit_edge

if.then3.if.end6_crit_edge:                       ; preds = %if.then3
  br label %if.end6

if.then4:                                         ; preds = %if.then3
  %arg5 = getelementptr inbounds %struct.arguments, %struct.arguments* %a, i32 0, i32 1
  %tmp6 = load %struct.argument*, %struct.argument** %arg5, align 8
  %tmp7 = bitcast %struct.argument* %tmp6 to i8*
  call void @free(i8* %tmp7) #8
  br label %if.end6

if.end6:                                          ; preds = %if.then3.if.end6_crit_edge, %if.then4
  %call7 = call i32* @__errno_location() #14
  store i32 22, i32* %call7, align 4
  store i8* null, i8** %retval
  br label %return

if.end8:                                          ; preds = %if.end
  %max_width_length = getelementptr inbounds %struct.char_directives, %struct.char_directives* %d, i32 0, i32 2
  %tmp8 = load i64, i64* %max_width_length, align 8
  %max_precision_length = getelementptr inbounds %struct.char_directives, %struct.char_directives* %d, i32 0, i32 3
  %tmp9 = load i64, i64* %max_precision_length, align 8
  %call9 = call i64 @xsum4(i64 7, i64 %tmp8, i64 %tmp9, i64 6) #13
  store i64 %call9, i64* %buf_neededlength, align 8
  %tmp10 = load i64, i64* %buf_neededlength, align 8
  %cmp10 = icmp ult i64 %tmp10, 4000
  br i1 %cmp10, label %if.then11, label %if.else

if.then11:                                        ; preds = %if.end8
  %tmp11 = load i64, i64* %buf_neededlength, align 8
  %mul = mul i64 %tmp11, 1
  %tmp12 = alloca i8, i64 %mul
  store i8* %tmp12, i8** %buf, align 8
  store i8* null, i8** %buf_malloced, align 8
  br label %if.end21

if.else:                                          ; preds = %if.end8
  %tmp13 = load i64, i64* %buf_neededlength, align 8
  %cmp12 = icmp ule i64 %tmp13, -1
  br i1 %cmp12, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else
  %tmp14 = load i64, i64* %buf_neededlength, align 8
  %mul13 = mul i64 %tmp14, 1
  store i64 %mul13, i64* %mul13.reg2mem
  %mul13.reload = load i64, i64* %mul13.reg2mem
  store i64 %mul13.reload, i64* %cond.reg2mem
  br label %cond.end

cond.false:                                       ; preds = %if.else
  store i64 -1, i64* %cond.reg2mem
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond.reload = load i64, i64* %cond.reg2mem
  store i64 %cond.reload, i64* %buf_memsize, align 8
  %tmp15 = load i64, i64* %buf_memsize, align 8
  %cmp14 = icmp eq i64 %tmp15, -1
  br i1 %cmp14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %cond.end
  br label %out_of_memory_1

if.end16:                                         ; preds = %cond.end
  %tmp16 = load i64, i64* %buf_memsize, align 8
  %call17 = call noalias i8* @malloc(i64 %tmp16) #8
  store i8* %call17, i8** %buf, align 8
  %tmp17 = load i8*, i8** %buf, align 8
  %cmp18 = icmp eq i8* %tmp17, null
  br i1 %cmp18, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.end16
  br label %out_of_memory_1

if.end20:                                         ; preds = %if.end16
  %tmp18 = load i8*, i8** %buf, align 8
  store i8* %tmp18, i8** %buf_malloced, align 8
  br label %if.end21

if.end21:                                         ; preds = %if.end20, %if.then11
  %tmp19 = load i8*, i8** %resultbuf.addr, align 8
  %cmp22 = icmp ne i8* %tmp19, null
  br i1 %cmp22, label %if.then23, label %if.else24

if.then23:                                        ; preds = %if.end21
  %tmp20 = load i8*, i8** %resultbuf.addr, align 8
  store i8* %tmp20, i8** %result, align 8
  %tmp21 = load i64*, i64** %lengthp.addr, align 8
  %tmp22 = load i64, i64* %tmp21, align 8
  store i64 %tmp22, i64* %allocated, align 8
  br label %if.end25

if.else24:                                        ; preds = %if.end21
  store i8* null, i8** %result, align 8
  store i64 0, i64* %allocated, align 8
  br label %if.end25

if.end25:                                         ; preds = %if.else24, %if.then23
  store i64 0, i64* %length, align 8
  %tmp23 = load i8*, i8** %format.addr, align 8
  store i8* %tmp23, i8** %cp, align 8
  store i64 0, i64* %i, align 8
  %dir26 = getelementptr inbounds %struct.char_directives, %struct.char_directives* %d, i32 0, i32 1
  %tmp24 = load %struct.char_directive*, %struct.char_directive** %dir26, align 8
  %arrayidx = getelementptr inbounds %struct.char_directive, %struct.char_directive* %tmp24, i64 0
  store %struct.char_directive* %arrayidx, %struct.char_directive** %dp, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc1381, %if.end25
  %tmp25 = load i8*, i8** %cp, align 8
  %tmp26 = load %struct.char_directive*, %struct.char_directive** %dp, align 8
  %dir_start = getelementptr inbounds %struct.char_directive, %struct.char_directive* %tmp26, i32 0, i32 0
  %tmp27 = load i8*, i8** %dir_start, align 8
  %cmp27 = icmp ne i8* %tmp25, %tmp27
  br i1 %cmp27, label %if.then28, label %for.cond.if.end71_crit_edge

for.cond.if.end71_crit_edge:                      ; preds = %for.cond
  br label %if.end71

if.then28:                                        ; preds = %for.cond
  %tmp28 = load %struct.char_directive*, %struct.char_directive** %dp, align 8
  %dir_start29 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %tmp28, i32 0, i32 0
  %tmp29 = load i8*, i8** %dir_start29, align 8
  %tmp30 = load i8*, i8** %cp, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %tmp29 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %tmp30 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  store i64 %sub.ptr.sub, i64* %n, align 8
  %tmp31 = load i64, i64* %length, align 8
  %tmp32 = load i64, i64* %n, align 8
  %call30 = call i64 @xsum(i64 %tmp31, i64 %tmp32) #13
  store i64 %call30, i64* %augmented_length, align 8
  %tmp33 = load i64, i64* %augmented_length, align 8
  %tmp34 = load i64, i64* %allocated, align 8
  %cmp31 = icmp ugt i64 %tmp33, %tmp34
  br i1 %cmp31, label %if.then32, label %if.then28.if.end70_crit_edge

if.then28.if.end70_crit_edge:                     ; preds = %if.then28
  br label %if.end70

if.then32:                                        ; preds = %if.then28
  %tmp35 = load i64, i64* %allocated, align 8
  %cmp33 = icmp ugt i64 %tmp35, 0
  br i1 %cmp33, label %cond.true34, label %cond.false41

cond.true34:                                      ; preds = %if.then32
  %tmp36 = load i64, i64* %allocated, align 8
  %cmp35 = icmp ule i64 %tmp36, 9223372036854775807
  br i1 %cmp35, label %cond.true36, label %cond.false38

cond.true36:                                      ; preds = %cond.true34
  %tmp37 = load i64, i64* %allocated, align 8
  %mul37 = mul i64 %tmp37, 2
  store i64 %mul37, i64* %mul37.reg2mem
  %mul37.reload = load i64, i64* %mul37.reg2mem
  store i64 %mul37.reload, i64* %cond40.reg2mem1028
  br label %cond.end39

cond.false38:                                     ; preds = %cond.true34
  store i64 -1, i64* %cond40.reg2mem1028
  br label %cond.end39

cond.end39:                                       ; preds = %cond.false38, %cond.true36
  %cond40.reload1029 = load i64, i64* %cond40.reg2mem1028
  store i64 %cond40.reload1029, i64* %cond40.reg2mem
  %cond40.reload = load i64, i64* %cond40.reg2mem
  store i64 %cond40.reload, i64* %cond43.reg2mem
  br label %cond.end42

cond.false41:                                     ; preds = %if.then32
  store i64 12, i64* %cond43.reg2mem
  br label %cond.end42

cond.end42:                                       ; preds = %cond.false41, %cond.end39
  %cond43.reload = load i64, i64* %cond43.reg2mem
  store i64 %cond43.reload, i64* %allocated, align 8
  %tmp38 = load i64, i64* %augmented_length, align 8
  %tmp39 = load i64, i64* %allocated, align 8
  %cmp44 = icmp ugt i64 %tmp38, %tmp39
  br i1 %cmp44, label %if.then45, label %cond.end42.if.end46_crit_edge

cond.end42.if.end46_crit_edge:                    ; preds = %cond.end42
  br label %if.end46

if.then45:                                        ; preds = %cond.end42
  %tmp40 = load i64, i64* %augmented_length, align 8
  store i64 %tmp40, i64* %allocated, align 8
  br label %if.end46

if.end46:                                         ; preds = %cond.end42.if.end46_crit_edge, %if.then45
  %tmp41 = load i64, i64* %allocated, align 8
  %cmp47 = icmp ule i64 %tmp41, -1
  br i1 %cmp47, label %cond.true48, label %cond.false50

cond.true48:                                      ; preds = %if.end46
  %tmp42 = load i64, i64* %allocated, align 8
  %mul49 = mul i64 %tmp42, 1
  store i64 %mul49, i64* %mul49.reg2mem
  %mul49.reload = load i64, i64* %mul49.reg2mem
  store i64 %mul49.reload, i64* %cond52.reg2mem
  br label %cond.end51

cond.false50:                                     ; preds = %if.end46
  store i64 -1, i64* %cond52.reg2mem
  br label %cond.end51

cond.end51:                                       ; preds = %cond.false50, %cond.true48
  %cond52.reload = load i64, i64* %cond52.reg2mem
  store i64 %cond52.reload, i64* %memory_size, align 8
  %tmp43 = load i64, i64* %memory_size, align 8
  %cmp53 = icmp eq i64 %tmp43, -1
  br i1 %cmp53, label %if.then54, label %if.end55

if.then54:                                        ; preds = %cond.end51
  br label %out_of_memory

if.end55:                                         ; preds = %cond.end51
  %tmp44 = load i8*, i8** %result, align 8
  %tmp45 = load i8*, i8** %resultbuf.addr, align 8
  %cmp56 = icmp eq i8* %tmp44, %tmp45
  br i1 %cmp56, label %if.end55.if.then58_crit_edge, label %lor.lhs.false

if.end55.if.then58_crit_edge:                     ; preds = %if.end55
  br label %if.then58

lor.lhs.false:                                    ; preds = %if.end55
  %tmp46 = load i8*, i8** %result, align 8
  %cmp57 = icmp eq i8* %tmp46, null
  br i1 %cmp57, label %lor.lhs.false.if.then58_crit_edge, label %if.else60

lor.lhs.false.if.then58_crit_edge:                ; preds = %lor.lhs.false
  br label %if.then58

if.then58:                                        ; preds = %lor.lhs.false.if.then58_crit_edge, %if.end55.if.then58_crit_edge
  %tmp47 = load i64, i64* %memory_size, align 8
  %call59 = call noalias i8* @malloc(i64 %tmp47) #8
  store i8* %call59, i8** %memory, align 8
  br label %if.end62

if.else60:                                        ; preds = %lor.lhs.false
  %tmp48 = load i8*, i8** %result, align 8
  %tmp49 = load i64, i64* %memory_size, align 8
  %call61 = call i8* @realloc(i8* %tmp48, i64 %tmp49) #8
  store i8* %call61, i8** %memory, align 8
  br label %if.end62

if.end62:                                         ; preds = %if.else60, %if.then58
  %tmp50 = load i8*, i8** %memory, align 8
  %cmp63 = icmp eq i8* %tmp50, null
  br i1 %cmp63, label %if.then64, label %if.end65

if.then64:                                        ; preds = %if.end62
  br label %out_of_memory

if.end65:                                         ; preds = %if.end62
  %tmp51 = load i8*, i8** %result, align 8
  %tmp52 = load i8*, i8** %resultbuf.addr, align 8
  %cmp66 = icmp eq i8* %tmp51, %tmp52
  br i1 %cmp66, label %land.lhs.true, label %if.end65.if.end69_crit_edge

if.end65.if.end69_crit_edge:                      ; preds = %if.end65
  br label %if.end69

land.lhs.true:                                    ; preds = %if.end65
  %tmp53 = load i64, i64* %length, align 8
  %cmp67 = icmp ugt i64 %tmp53, 0
  br i1 %cmp67, label %if.then68, label %land.lhs.true.if.end69_crit_edge

land.lhs.true.if.end69_crit_edge:                 ; preds = %land.lhs.true
  br label %if.end69

if.then68:                                        ; preds = %land.lhs.true
  %tmp54 = load i8*, i8** %memory, align 8
  %tmp55 = load i8*, i8** %result, align 8
  %tmp56 = load i64, i64* %length, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %tmp54, i8* %tmp55, i64 %tmp56, i32 1, i1 false)
  br label %if.end69

if.end69:                                         ; preds = %land.lhs.true.if.end69_crit_edge, %if.end65.if.end69_crit_edge, %if.then68
  %tmp57 = load i8*, i8** %memory, align 8
  store i8* %tmp57, i8** %result, align 8
  br label %if.end70

if.end70:                                         ; preds = %if.then28.if.end70_crit_edge, %if.end69
  %tmp58 = load i8*, i8** %result, align 8
  %tmp59 = load i64, i64* %length, align 8
  %add.ptr = getelementptr inbounds i8, i8* %tmp58, i64 %tmp59
  %tmp60 = load i8*, i8** %cp, align 8
  %tmp61 = load i64, i64* %n, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr, i8* %tmp60, i64 %tmp61, i32 1, i1 false)
  %tmp62 = load i64, i64* %augmented_length, align 8
  store i64 %tmp62, i64* %length, align 8
  br label %if.end71

if.end71:                                         ; preds = %for.cond.if.end71_crit_edge, %if.end70
  %tmp63 = load i64, i64* %i, align 8
  %count = getelementptr inbounds %struct.char_directives, %struct.char_directives* %d, i32 0, i32 0
  %tmp64 = load i64, i64* %count, align 8
  %cmp72 = icmp eq i64 %tmp63, %tmp64
  br i1 %cmp72, label %if.then73, label %if.end74

if.then73:                                        ; preds = %if.end71
  br label %for.end1384

if.end74:                                         ; preds = %if.end71
  %tmp65 = load %struct.char_directive*, %struct.char_directive** %dp, align 8
  %conversion = getelementptr inbounds %struct.char_directive, %struct.char_directive* %tmp65, i32 0, i32 9
  %tmp66 = load i8, i8* %conversion, align 1
  %conv = sext i8 %tmp66 to i32
  %cmp75 = icmp eq i32 %conv, 37
  br i1 %cmp75, label %if.then77, label %if.else140

if.then77:                                        ; preds = %if.end74
  %tmp67 = load %struct.char_directive*, %struct.char_directive** %dp, align 8
  %arg_index = getelementptr inbounds %struct.char_directive, %struct.char_directive* %tmp67, i32 0, i32 10
  %tmp68 = load i64, i64* %arg_index, align 8
  %cmp79 = icmp eq i64 %tmp68, -1
  br i1 %cmp79, label %if.end82, label %if.then81

if.then81:                                        ; preds = %if.then77
  call void @abort() #12
  unreachable

if.end82:                                         ; preds = %if.then77
  %tmp69 = load i64, i64* %length, align 8
  %call83 = call i64 @xsum(i64 %tmp69, i64 1) #13
  store i64 %call83, i64* %augmented_length78, align 8
  %tmp70 = load i64, i64* %augmented_length78, align 8
  %tmp71 = load i64, i64* %allocated, align 8
  %cmp84 = icmp ugt i64 %tmp70, %tmp71
  br i1 %cmp84, label %if.then86, label %if.end82.if.end138_crit_edge

if.end82.if.end138_crit_edge:                     ; preds = %if.end82
  br label %if.end138

if.then86:                                        ; preds = %if.end82
  %tmp72 = load i64, i64* %allocated, align 8
  %cmp89 = icmp ugt i64 %tmp72, 0
  br i1 %cmp89, label %cond.true91, label %cond.false99

cond.true91:                                      ; preds = %if.then86
  %tmp73 = load i64, i64* %allocated, align 8
  %cmp92 = icmp ule i64 %tmp73, 9223372036854775807
  br i1 %cmp92, label %cond.true94, label %cond.false96

cond.true94:                                      ; preds = %cond.true91
  %tmp74 = load i64, i64* %allocated, align 8
  %mul95 = mul i64 %tmp74, 2
  store i64 %mul95, i64* %mul95.reg2mem
  %mul95.reload = load i64, i64* %mul95.reg2mem
  store i64 %mul95.reload, i64* %cond98.reg2mem1026
  br label %cond.end97

cond.false96:                                     ; preds = %cond.true91
  store i64 -1, i64* %cond98.reg2mem1026
  br label %cond.end97

cond.end97:                                       ; preds = %cond.false96, %cond.true94
  %cond98.reload1027 = load i64, i64* %cond98.reg2mem1026
  store i64 %cond98.reload1027, i64* %cond98.reg2mem
  %cond98.reload = load i64, i64* %cond98.reg2mem
  store i64 %cond98.reload, i64* %cond101.reg2mem
  br label %cond.end100

cond.false99:                                     ; preds = %if.then86
  store i64 12, i64* %cond101.reg2mem
  br label %cond.end100

cond.end100:                                      ; preds = %cond.false99, %cond.end97
  %cond101.reload = load i64, i64* %cond101.reg2mem
  store i64 %cond101.reload, i64* %allocated, align 8
  %tmp75 = load i64, i64* %augmented_length78, align 8
  %tmp76 = load i64, i64* %allocated, align 8
  %cmp102 = icmp ugt i64 %tmp75, %tmp76
  br i1 %cmp102, label %if.then104, label %cond.end100.if.end105_crit_edge

cond.end100.if.end105_crit_edge:                  ; preds = %cond.end100
  br label %if.end105

if.then104:                                       ; preds = %cond.end100
  %tmp77 = load i64, i64* %augmented_length78, align 8
  store i64 %tmp77, i64* %allocated, align 8
  br label %if.end105

if.end105:                                        ; preds = %cond.end100.if.end105_crit_edge, %if.then104
  %tmp78 = load i64, i64* %allocated, align 8
  %cmp106 = icmp ule i64 %tmp78, -1
  br i1 %cmp106, label %cond.true108, label %cond.false110

cond.true108:                                     ; preds = %if.end105
  %tmp79 = load i64, i64* %allocated, align 8
  %mul109 = mul i64 %tmp79, 1
  store i64 %mul109, i64* %mul109.reg2mem
  %mul109.reload = load i64, i64* %mul109.reg2mem
  store i64 %mul109.reload, i64* %cond112.reg2mem
  br label %cond.end111

cond.false110:                                    ; preds = %if.end105
  store i64 -1, i64* %cond112.reg2mem
  br label %cond.end111

cond.end111:                                      ; preds = %cond.false110, %cond.true108
  %cond112.reload = load i64, i64* %cond112.reg2mem
  store i64 %cond112.reload, i64* %memory_size87, align 8
  %tmp80 = load i64, i64* %memory_size87, align 8
  %cmp113 = icmp eq i64 %tmp80, -1
  br i1 %cmp113, label %if.then115, label %if.end116

if.then115:                                       ; preds = %cond.end111
  br label %out_of_memory

if.end116:                                        ; preds = %cond.end111
  %tmp81 = load i8*, i8** %result, align 8
  %tmp82 = load i8*, i8** %resultbuf.addr, align 8
  %cmp117 = icmp eq i8* %tmp81, %tmp82
  br i1 %cmp117, label %if.end116.if.then122_crit_edge, label %lor.lhs.false119

if.end116.if.then122_crit_edge:                   ; preds = %if.end116
  br label %if.then122

lor.lhs.false119:                                 ; preds = %if.end116
  %tmp83 = load i8*, i8** %result, align 8
  %cmp120 = icmp eq i8* %tmp83, null
  br i1 %cmp120, label %lor.lhs.false119.if.then122_crit_edge, label %if.else124

lor.lhs.false119.if.then122_crit_edge:            ; preds = %lor.lhs.false119
  br label %if.then122

if.then122:                                       ; preds = %lor.lhs.false119.if.then122_crit_edge, %if.end116.if.then122_crit_edge
  %tmp84 = load i64, i64* %memory_size87, align 8
  %call123 = call noalias i8* @malloc(i64 %tmp84) #8
  store i8* %call123, i8** %memory88, align 8
  br label %if.end126

if.else124:                                       ; preds = %lor.lhs.false119
  %tmp85 = load i8*, i8** %result, align 8
  %tmp86 = load i64, i64* %memory_size87, align 8
  %call125 = call i8* @realloc(i8* %tmp85, i64 %tmp86) #8
  store i8* %call125, i8** %memory88, align 8
  br label %if.end126

if.end126:                                        ; preds = %if.else124, %if.then122
  %tmp87 = load i8*, i8** %memory88, align 8
  %cmp127 = icmp eq i8* %tmp87, null
  br i1 %cmp127, label %if.then129, label %if.end130

if.then129:                                       ; preds = %if.end126
  br label %out_of_memory

if.end130:                                        ; preds = %if.end126
  %tmp88 = load i8*, i8** %result, align 8
  %tmp89 = load i8*, i8** %resultbuf.addr, align 8
  %cmp131 = icmp eq i8* %tmp88, %tmp89
  br i1 %cmp131, label %land.lhs.true133, label %if.end130.if.end137_crit_edge

if.end130.if.end137_crit_edge:                    ; preds = %if.end130
  br label %if.end137

land.lhs.true133:                                 ; preds = %if.end130
  %tmp90 = load i64, i64* %length, align 8
  %cmp134 = icmp ugt i64 %tmp90, 0
  br i1 %cmp134, label %if.then136, label %land.lhs.true133.if.end137_crit_edge

land.lhs.true133.if.end137_crit_edge:             ; preds = %land.lhs.true133
  br label %if.end137

if.then136:                                       ; preds = %land.lhs.true133
  %tmp91 = load i8*, i8** %memory88, align 8
  %tmp92 = load i8*, i8** %result, align 8
  %tmp93 = load i64, i64* %length, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %tmp91, i8* %tmp92, i64 %tmp93, i32 1, i1 false)
  br label %if.end137

if.end137:                                        ; preds = %land.lhs.true133.if.end137_crit_edge, %if.end130.if.end137_crit_edge, %if.then136
  %tmp94 = load i8*, i8** %memory88, align 8
  store i8* %tmp94, i8** %result, align 8
  br label %if.end138

if.end138:                                        ; preds = %if.end82.if.end138_crit_edge, %if.end137
  %tmp95 = load i64, i64* %length, align 8
  %tmp96 = load i8*, i8** %result, align 8
  %arrayidx139 = getelementptr inbounds i8, i8* %tmp96, i64 %tmp95
  store i8 37, i8* %arrayidx139, align 1
  %tmp97 = load i64, i64* %augmented_length78, align 8
  store i64 %tmp97, i64* %length, align 8
  br label %if.end1380

if.else140:                                       ; preds = %if.end74
  %tmp98 = load %struct.char_directive*, %struct.char_directive** %dp, align 8
  %arg_index141 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %tmp98, i32 0, i32 10
  %tmp99 = load i64, i64* %arg_index141, align 8
  %cmp142 = icmp ne i64 %tmp99, -1
  br i1 %cmp142, label %if.end145, label %if.then144

if.then144:                                       ; preds = %if.else140
  call void @abort() #12
  unreachable

if.end145:                                        ; preds = %if.else140
  %tmp100 = load %struct.char_directive*, %struct.char_directive** %dp, align 8
  %conversion146 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %tmp100, i32 0, i32 9
  %tmp101 = load i8, i8* %conversion146, align 1
  %conv147 = sext i8 %tmp101 to i32
  %cmp148 = icmp eq i32 %conv147, 110
  br i1 %cmp148, label %if.then150, label %if.else181

if.then150:                                       ; preds = %if.end145
  %tmp102 = load %struct.char_directive*, %struct.char_directive** %dp, align 8
  %arg_index151 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %tmp102, i32 0, i32 10
  %tmp103 = load i64, i64* %arg_index151, align 8
  %arg152 = getelementptr inbounds %struct.arguments, %struct.arguments* %a, i32 0, i32 1
  %tmp104 = load %struct.argument*, %struct.argument** %arg152, align 8
  %arrayidx153 = getelementptr inbounds %struct.argument, %struct.argument* %tmp104, i64 %tmp103
  %type = getelementptr inbounds %struct.argument, %struct.argument* %arrayidx153, i32 0, i32 0
  %tmp105 = load i32, i32* %type, align 4
  switch i32 %tmp105, label %sw.default [
    i32 18, label %sw.bb
    i32 19, label %sw.bb159
    i32 20, label %sw.bb165
    i32 21, label %sw.bb171
    i32 22, label %sw.bb176
  ]

sw.bb:                                            ; preds = %if.then150
  %tmp106 = load i64, i64* %length, align 8
  %conv154 = trunc i64 %tmp106 to i8
  %tmp107 = load %struct.char_directive*, %struct.char_directive** %dp, align 8
  %arg_index155 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %tmp107, i32 0, i32 10
  %tmp108 = load i64, i64* %arg_index155, align 8
  %arg156 = getelementptr inbounds %struct.arguments, %struct.arguments* %a, i32 0, i32 1
  %tmp109 = load %struct.argument*, %struct.argument** %arg156, align 8
  %arrayidx157 = getelementptr inbounds %struct.argument, %struct.argument* %tmp109, i64 %tmp108
  %a158 = getelementptr inbounds %struct.argument, %struct.argument* %arrayidx157, i32 0, i32 1
  %a_count_schar_pointer = bitcast %union.anon.17* %a158 to i8**
  %tmp110 = load i8*, i8** %a_count_schar_pointer, align 8
  store i8 %conv154, i8* %tmp110, align 1
  br label %sw.epilog

sw.bb159:                                         ; preds = %if.then150
  %tmp111 = load i64, i64* %length, align 8
  %conv160 = trunc i64 %tmp111 to i16
  %tmp112 = load %struct.char_directive*, %struct.char_directive** %dp, align 8
  %arg_index161 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %tmp112, i32 0, i32 10
  %tmp113 = load i64, i64* %arg_index161, align 8
  %arg162 = getelementptr inbounds %struct.arguments, %struct.arguments* %a, i32 0, i32 1
  %tmp114 = load %struct.argument*, %struct.argument** %arg162, align 8
  %arrayidx163 = getelementptr inbounds %struct.argument, %struct.argument* %tmp114, i64 %tmp113
  %a164 = getelementptr inbounds %struct.argument, %struct.argument* %arrayidx163, i32 0, i32 1
  %a_count_short_pointer = bitcast %union.anon.17* %a164 to i16**
  %tmp115 = load i16*, i16** %a_count_short_pointer, align 8
  store i16 %conv160, i16* %tmp115, align 2
  br label %sw.epilog

sw.bb165:                                         ; preds = %if.then150
  %tmp116 = load i64, i64* %length, align 8
  %conv166 = trunc i64 %tmp116 to i32
  %tmp117 = load %struct.char_directive*, %struct.char_directive** %dp, align 8
  %arg_index167 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %tmp117, i32 0, i32 10
  %tmp118 = load i64, i64* %arg_index167, align 8
  %arg168 = getelementptr inbounds %struct.arguments, %struct.arguments* %a, i32 0, i32 1
  %tmp119 = load %struct.argument*, %struct.argument** %arg168, align 8
  %arrayidx169 = getelementptr inbounds %struct.argument, %struct.argument* %tmp119, i64 %tmp118
  %a170 = getelementptr inbounds %struct.argument, %struct.argument* %arrayidx169, i32 0, i32 1
  %a_count_int_pointer = bitcast %union.anon.17* %a170 to i32**
  %tmp120 = load i32*, i32** %a_count_int_pointer, align 8
  store i32 %conv166, i32* %tmp120, align 4
  br label %sw.epilog

sw.bb171:                                         ; preds = %if.then150
  %tmp121 = load i64, i64* %length, align 8
  %tmp122 = load %struct.char_directive*, %struct.char_directive** %dp, align 8
  %arg_index172 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %tmp122, i32 0, i32 10
  %tmp123 = load i64, i64* %arg_index172, align 8
  %arg173 = getelementptr inbounds %struct.arguments, %struct.arguments* %a, i32 0, i32 1
  %tmp124 = load %struct.argument*, %struct.argument** %arg173, align 8
  %arrayidx174 = getelementptr inbounds %struct.argument, %struct.argument* %tmp124, i64 %tmp123
  %a175 = getelementptr inbounds %struct.argument, %struct.argument* %arrayidx174, i32 0, i32 1
  %a_count_longint_pointer = bitcast %union.anon.17* %a175 to i64**
  %tmp125 = load i64*, i64** %a_count_longint_pointer, align 8
  store i64 %tmp121, i64* %tmp125, align 8
  br label %sw.epilog

sw.bb176:                                         ; preds = %if.then150
  %tmp126 = load i64, i64* %length, align 8
  %tmp127 = load %struct.char_directive*, %struct.char_directive** %dp, align 8
  %arg_index177 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %tmp127, i32 0, i32 10
  %tmp128 = load i64, i64* %arg_index177, align 8
  %arg178 = getelementptr inbounds %struct.arguments, %struct.arguments* %a, i32 0, i32 1
  %tmp129 = load %struct.argument*, %struct.argument** %arg178, align 8
  %arrayidx179 = getelementptr inbounds %struct.argument, %struct.argument* %tmp129, i64 %tmp128
  %a180 = getelementptr inbounds %struct.argument, %struct.argument* %arrayidx179, i32 0, i32 1
  %a_count_longlongint_pointer = bitcast %union.anon.17* %a180 to i64**
  %tmp130 = load i64*, i64** %a_count_longlongint_pointer, align 8
  store i64 %tmp126, i64* %tmp130, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %if.then150
  call void @abort() #12
  unreachable

sw.epilog:                                        ; preds = %sw.bb176, %sw.bb171, %sw.bb165, %sw.bb159, %sw.bb
  br label %if.end1379

if.else181:                                       ; preds = %if.end145
  %tmp131 = load %struct.char_directive*, %struct.char_directive** %dp, align 8
  %conversion182 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %tmp131, i32 0, i32 9
  %tmp132 = load i8, i8* %conversion182, align 1
  %conv183 = sext i8 %tmp132 to i32
  %cmp184 = icmp eq i32 %conv183, 102
  br i1 %cmp184, label %if.else181.land.lhs.true221_crit_edge, label %lor.lhs.false186

if.else181.land.lhs.true221_crit_edge:            ; preds = %if.else181
  br label %land.lhs.true221

lor.lhs.false186:                                 ; preds = %if.else181
  %tmp133 = load %struct.char_directive*, %struct.char_directive** %dp, align 8
  %conversion187 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %tmp133, i32 0, i32 9
  %tmp134 = load i8, i8* %conversion187, align 1
  %conv188 = sext i8 %tmp134 to i32
  %cmp189 = icmp eq i32 %conv188, 70
  br i1 %cmp189, label %lor.lhs.false186.land.lhs.true221_crit_edge, label %lor.lhs.false191

lor.lhs.false186.land.lhs.true221_crit_edge:      ; preds = %lor.lhs.false186
  br label %land.lhs.true221

lor.lhs.false191:                                 ; preds = %lor.lhs.false186
  %tmp135 = load %struct.char_directive*, %struct.char_directive** %dp, align 8
  %conversion192 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %tmp135, i32 0, i32 9
  %tmp136 = load i8, i8* %conversion192, align 1
  %conv193 = sext i8 %tmp136 to i32
  %cmp194 = icmp eq i32 %conv193, 101
  br i1 %cmp194, label %lor.lhs.false191.land.lhs.true221_crit_edge, label %lor.lhs.false196

lor.lhs.false191.land.lhs.true221_crit_edge:      ; preds = %lor.lhs.false191
  br label %land.lhs.true221

lor.lhs.false196:                                 ; preds = %lor.lhs.false191
  %tmp137 = load %struct.char_directive*, %struct.char_directive** %dp, align 8
  %conversion197 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %tmp137, i32 0, i32 9
  %tmp138 = load i8, i8* %conversion197, align 1
  %conv198 = sext i8 %tmp138 to i32
  %cmp199 = icmp eq i32 %conv198, 69
  br i1 %cmp199, label %lor.lhs.false196.land.lhs.true221_crit_edge, label %lor.lhs.false201

lor.lhs.false196.land.lhs.true221_crit_edge:      ; preds = %lor.lhs.false196
  br label %land.lhs.true221

lor.lhs.false201:                                 ; preds = %lor.lhs.false196
  %tmp139 = load %struct.char_directive*, %struct.char_directive** %dp, align 8
  %conversion202 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %tmp139, i32 0, i32 9
  %tmp140 = load i8, i8* %conversion202, align 1
  %conv203 = sext i8 %tmp140 to i32
  %cmp204 = icmp eq i32 %conv203, 103
  br i1 %cmp204, label %lor.lhs.false201.land.lhs.true221_crit_edge, label %lor.lhs.false206

lor.lhs.false201.land.lhs.true221_crit_edge:      ; preds = %lor.lhs.false201
  br label %land.lhs.true221

lor.lhs.false206:                                 ; preds = %lor.lhs.false201
  %tmp141 = load %struct.char_directive*, %struct.char_directive** %dp, align 8
  %conversion207 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %tmp141, i32 0, i32 9
  %tmp142 = load i8, i8* %conversion207, align 1
  %conv208 = sext i8 %tmp142 to i32
  %cmp209 = icmp eq i32 %conv208, 71
  br i1 %cmp209, label %lor.lhs.false206.land.lhs.true221_crit_edge, label %lor.lhs.false211

lor.lhs.false206.land.lhs.true221_crit_edge:      ; preds = %lor.lhs.false206
  br label %land.lhs.true221

lor.lhs.false211:                                 ; preds = %lor.lhs.false206
  %tmp143 = load %struct.char_directive*, %struct.char_directive** %dp, align 8
  %conversion212 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %tmp143, i32 0, i32 9
  %tmp144 = load i8, i8* %conversion212, align 1
  %conv213 = sext i8 %tmp144 to i32
  %cmp214 = icmp eq i32 %conv213, 97
  br i1 %cmp214, label %lor.lhs.false211.land.lhs.true221_crit_edge, label %lor.lhs.false216

lor.lhs.false211.land.lhs.true221_crit_edge:      ; preds = %lor.lhs.false211
  br label %land.lhs.true221

lor.lhs.false216:                                 ; preds = %lor.lhs.false211
  %tmp145 = load %struct.char_directive*, %struct.char_directive** %dp, align 8
  %conversion217 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %tmp145, i32 0, i32 9
  %tmp146 = load i8, i8* %conversion217, align 1
  %conv218 = sext i8 %tmp146 to i32
  %cmp219 = icmp eq i32 %conv218, 65
  br i1 %cmp219, label %lor.lhs.false216.land.lhs.true221_crit_edge, label %lor.lhs.false216.if.else608_crit_edge

lor.lhs.false216.if.else608_crit_edge:            ; preds = %lor.lhs.false216
  br label %if.else608

lor.lhs.false216.land.lhs.true221_crit_edge:      ; preds = %lor.lhs.false216
  br label %land.lhs.true221

land.lhs.true221:                                 ; preds = %lor.lhs.false216.land.lhs.true221_crit_edge, %lor.lhs.false211.land.lhs.true221_crit_edge, %lor.lhs.false206.land.lhs.true221_crit_edge, %lor.lhs.false201.land.lhs.true221_crit_edge, %lor.lhs.false196.land.lhs.true221_crit_edge, %lor.lhs.false191.land.lhs.true221_crit_edge, %lor.lhs.false186.land.lhs.true221_crit_edge, %if.else181.land.lhs.true221_crit_edge
  %tmp147 = load %struct.char_directive*, %struct.char_directive** %dp, align 8
  %arg_index222 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %tmp147, i32 0, i32 10
  %tmp148 = load i64, i64* %arg_index222, align 8
  %arg223 = getelementptr inbounds %struct.arguments, %struct.arguments* %a, i32 0, i32 1
  %tmp149 = load %struct.argument*, %struct.argument** %arg223, align 8
  %arrayidx224 = getelementptr inbounds %struct.argument, %struct.argument* %tmp149, i64 %tmp148
  %type225 = getelementptr inbounds %struct.argument, %struct.argument* %arrayidx224, i32 0, i32 0
  %tmp150 = load i32, i32* %type225, align 4
  %cmp226 = icmp eq i32 %tmp150, 12
  br i1 %cmp226, label %land.lhs.true228, label %land.lhs.true221.if.else608_crit_edge

land.lhs.true221.if.else608_crit_edge:            ; preds = %land.lhs.true221
  br label %if.else608

land.lhs.true228:                                 ; preds = %land.lhs.true221
  %tmp151 = load %struct.char_directive*, %struct.char_directive** %dp, align 8
  %arg_index229 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %tmp151, i32 0, i32 10
  %tmp152 = load i64, i64* %arg_index229, align 8
  %arg230 = getelementptr inbounds %struct.arguments, %struct.arguments* %a, i32 0, i32 1
  %tmp153 = load %struct.argument*, %struct.argument** %arg230, align 8
  %arrayidx231 = getelementptr inbounds %struct.argument, %struct.argument* %tmp153, i64 %tmp152
  %a232 = getelementptr inbounds %struct.argument, %struct.argument* %arrayidx231, i32 0, i32 1
  %a_longdouble = bitcast %union.anon.17* %a232 to x86_fp80*
  %tmp154 = load x86_fp80, x86_fp80* %a_longdouble, align 16
  %call233 = call i32 @is_infinitel(x86_fp80 %tmp154)
  %tobool234 = icmp ne i32 %call233, 0
  br i1 %tobool234, label %if.then235, label %land.lhs.true228.if.else608_crit_edge

land.lhs.true228.if.else608_crit_edge:            ; preds = %land.lhs.true228
  br label %if.else608

if.then235:                                       ; preds = %land.lhs.true228
  %tmp155 = load %struct.char_directive*, %struct.char_directive** %dp, align 8
  %flags236 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %tmp155, i32 0, i32 2
  %tmp156 = load i32, i32* %flags236, align 4
  store i32 %tmp156, i32* %flags, align 4
  store i32 0, i32* %has_width, align 4
  store i64 0, i64* %width, align 8
  %tmp157 = load %struct.char_directive*, %struct.char_directive** %dp, align 8
  %width_start = getelementptr inbounds %struct.char_directive, %struct.char_directive* %tmp157, i32 0, i32 3
  %tmp158 = load i8*, i8** %width_start, align 8
  %tmp159 = load %struct.char_directive*, %struct.char_directive** %dp, align 8
  %width_end = getelementptr inbounds %struct.char_directive, %struct.char_directive* %tmp159, i32 0, i32 4
  %tmp160 = load i8*, i8** %width_end, align 8
  %cmp239 = icmp ne i8* %tmp158, %tmp160
  br i1 %cmp239, label %if.then241, label %if.then235.if.end284_crit_edge

if.then235.if.end284_crit_edge:                   ; preds = %if.then235
  br label %if.end284

if.then241:                                       ; preds = %if.then235
  %tmp161 = load %struct.char_directive*, %struct.char_directive** %dp, align 8
  %width_arg_index = getelementptr inbounds %struct.char_directive, %struct.char_directive* %tmp161, i32 0, i32 5
  %tmp162 = load i64, i64* %width_arg_index, align 8
  %cmp242 = icmp ne i64 %tmp162, -1
  br i1 %cmp242, label %if.then244, label %if.else266

if.then244:                                       ; preds = %if.then241
  %tmp163 = load %struct.char_directive*, %struct.char_directive** %dp, align 8
  %width_arg_index247 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %tmp163, i32 0, i32 5
  %tmp164 = load i64, i64* %width_arg_index247, align 8
  %arg248 = getelementptr inbounds %struct.arguments, %struct.arguments* %a, i32 0, i32 1
  %tmp165 = load %struct.argument*, %struct.argument** %arg248, align 8
  %arrayidx249 = getelementptr inbounds %struct.argument, %struct.argument* %tmp165, i64 %tmp164
  %type250 = getelementptr inbounds %struct.argument, %struct.argument* %arrayidx249, i32 0, i32 0
  %tmp166 = load i32, i32* %type250, align 4
  %cmp251 = icmp eq i32 %tmp166, 5
  br i1 %cmp251, label %if.end254, label %if.then253

if.then253:                                       ; preds = %if.then244
  call void @abort() #12
  unreachable

if.end254:                                        ; preds = %if.then244
  %tmp167 = load %struct.char_directive*, %struct.char_directive** %dp, align 8
  %width_arg_index255 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %tmp167, i32 0, i32 5
  %tmp168 = load i64, i64* %width_arg_index255, align 8
  %arg256 = getelementptr inbounds %struct.arguments, %struct.arguments* %a, i32 0, i32 1
  %tmp169 = load %struct.argument*, %struct.argument** %arg256, align 8
  %arrayidx257 = getelementptr inbounds %struct.argument, %struct.argument* %tmp169, i64 %tmp168
  %a258 = getelementptr inbounds %struct.argument, %struct.argument* %arrayidx257, i32 0, i32 1
  %a_int = bitcast %union.anon.17* %a258 to i32*
  %tmp170 = load i32, i32* %a_int, align 4
  store i32 %tmp170, i32* %arg246, align 4
  %tmp171 = load i32, i32* %arg246, align 4
  %cmp259 = icmp slt i32 %tmp171, 0
  br i1 %cmp259, label %if.then261, label %if.else263

if.then261:                                       ; preds = %if.end254
  %tmp172 = load i32, i32* %flags, align 4
  %or = or i32 %tmp172, 2
  store i32 %or, i32* %flags, align 4
  %tmp173 = load i32, i32* %arg246, align 4
  %sub = sub nsw i32 0, %tmp173
  %conv262 = zext i32 %sub to i64
  store i64 %conv262, i64* %width, align 8
  br label %if.end265

if.else263:                                       ; preds = %if.end254
  %tmp174 = load i32, i32* %arg246, align 4
  %conv264 = sext i32 %tmp174 to i64
  store i64 %conv264, i64* %width, align 8
  br label %if.end265

if.end265:                                        ; preds = %if.else263, %if.then261
  br label %if.end283

if.else266:                                       ; preds = %if.then241
  %tmp175 = load %struct.char_directive*, %struct.char_directive** %dp, align 8
  %width_start268 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %tmp175, i32 0, i32 3
  %tmp176 = load i8*, i8** %width_start268, align 8
  store i8* %tmp176, i8** %digitp, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond.do.body_crit_edge, %if.else266
  %tmp177 = load i64, i64* %width, align 8
  %cmp269 = icmp ule i64 %tmp177, 1844674407370955161
  br i1 %cmp269, label %cond.true271, label %cond.false273

cond.true271:                                     ; preds = %do.body
  %tmp178 = load i64, i64* %width, align 8
  %mul272 = mul i64 %tmp178, 10
  store i64 %mul272, i64* %mul272.reg2mem
  %mul272.reload = load i64, i64* %mul272.reg2mem
  store i64 %mul272.reload, i64* %cond275.reg2mem
  br label %cond.end274

cond.false273:                                    ; preds = %do.body
  store i64 -1, i64* %cond275.reg2mem
  br label %cond.end274

cond.end274:                                      ; preds = %cond.false273, %cond.true271
  %cond275.reload = load i64, i64* %cond275.reg2mem
  %tmp179 = load i8*, i8** %digitp, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %tmp179, i32 1
  store i8* %incdec.ptr, i8** %digitp, align 8
  %tmp180 = load i8, i8* %tmp179, align 1
  %conv276 = sext i8 %tmp180 to i32
  %sub277 = sub nsw i32 %conv276, 48
  %conv278 = sext i32 %sub277 to i64
  %call279 = call i64 @xsum(i64 %cond275.reload, i64 %conv278) #13
  store i64 %call279, i64* %width, align 8
  br label %do.cond

do.cond:                                          ; preds = %cond.end274
  %tmp181 = load i8*, i8** %digitp, align 8
  %tmp182 = load %struct.char_directive*, %struct.char_directive** %dp, align 8
  %width_end280 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %tmp182, i32 0, i32 4
  %tmp183 = load i8*, i8** %width_end280, align 8
  %cmp281 = icmp ne i8* %tmp181, %tmp183
  br i1 %cmp281, label %do.cond.do.body_crit_edge, label %do.end

do.cond.do.body_crit_edge:                        ; preds = %do.cond
  br label %do.body

do.end:                                           ; preds = %do.cond
  br label %if.end283

if.end283:                                        ; preds = %do.end, %if.end265
  store i32 1, i32* %has_width, align 4
  br label %if.end284

if.end284:                                        ; preds = %if.then235.if.end284_crit_edge, %if.end283
  store i32 0, i32* %has_precision, align 4
  store i64 0, i64* %precision, align 8
  %tmp184 = load %struct.char_directive*, %struct.char_directive** %dp, align 8
  %precision_start = getelementptr inbounds %struct.char_directive, %struct.char_directive* %tmp184, i32 0, i32 6
  %tmp185 = load i8*, i8** %precision_start, align 8
  %tmp186 = load %struct.char_directive*, %struct.char_directive** %dp, align 8
  %precision_end = getelementptr inbounds %struct.char_directive, %struct.char_directive* %tmp186, i32 0, i32 7
  %tmp187 = load i8*, i8** %precision_end, align 8
  %cmp285 = icmp ne i8* %tmp185, %tmp187
  br i1 %cmp285, label %if.then287, label %if.end284.if.end332_crit_edge

if.end284.if.end332_crit_edge:                    ; preds = %if.end284
  br label %if.end332

if.then287:                                       ; preds = %if.end284
  %tmp188 = load %struct.char_directive*, %struct.char_directive** %dp, align 8
  %precision_arg_index = getelementptr inbounds %struct.char_directive, %struct.char_directive* %tmp188, i32 0, i32 8
  %tmp189 = load i64, i64* %precision_arg_index, align 8
  %cmp288 = icmp ne i64 %tmp189, -1
  br i1 %cmp288, label %if.then290, label %if.else311

if.then290:                                       ; preds = %if.then287
  %tmp190 = load %struct.char_directive*, %struct.char_directive** %dp, align 8
  %precision_arg_index293 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %tmp190, i32 0, i32 8
  %tmp191 = load i64, i64* %precision_arg_index293, align 8
  %arg294 = getelementptr inbounds %struct.arguments, %struct.arguments* %a, i32 0, i32 1
  %tmp192 = load %struct.argument*, %struct.argument** %arg294, align 8
  %arrayidx295 = getelementptr inbounds %struct.argument, %struct.argument* %tmp192, i64 %tmp191
  %type296 = getelementptr inbounds %struct.argument, %struct.argument* %arrayidx295, i32 0, i32 0
  %tmp193 = load i32, i32* %type296, align 4
  %cmp297 = icmp eq i32 %tmp193, 5
  br i1 %cmp297, label %if.end300, label %if.then299

if.then299:                                       ; preds = %if.then290
  call void @abort() #12
  unreachable

if.end300:                                        ; preds = %if.then290
  %tmp194 = load %struct.char_directive*, %struct.char_directive** %dp, align 8
  %precision_arg_index301 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %tmp194, i32 0, i32 8
  %tmp195 = load i64, i64* %precision_arg_index301, align 8
  %arg302 = getelementptr inbounds %struct.arguments, %struct.arguments* %a, i32 0, i32 1
  %tmp196 = load %struct.argument*, %struct.argument** %arg302, align 8
  %arrayidx303 = getelementptr inbounds %struct.argument, %struct.argument* %tmp196, i64 %tmp195
  %a304 = getelementptr inbounds %struct.argument, %struct.argument* %arrayidx303, i32 0, i32 1
  %a_int305 = bitcast %union.anon.17* %a304 to i32*
  %tmp197 = load i32, i32* %a_int305, align 4
  store i32 %tmp197, i32* %arg292, align 4
  %tmp198 = load i32, i32* %arg292, align 4
  %cmp306 = icmp sge i32 %tmp198, 0
  br i1 %cmp306, label %if.then308, label %if.end300.if.end310_crit_edge

if.end300.if.end310_crit_edge:                    ; preds = %if.end300
  br label %if.end310

if.then308:                                       ; preds = %if.end300
  %tmp199 = load i32, i32* %arg292, align 4
  %conv309 = sext i32 %tmp199 to i64
  store i64 %conv309, i64* %precision, align 8
  store i32 1, i32* %has_precision, align 4
  br label %if.end310

if.end310:                                        ; preds = %if.end300.if.end310_crit_edge, %if.then308
  br label %if.end331

if.else311:                                       ; preds = %if.then287
  %tmp200 = load %struct.char_directive*, %struct.char_directive** %dp, align 8
  %precision_start314 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %tmp200, i32 0, i32 6
  %tmp201 = load i8*, i8** %precision_start314, align 8
  %add.ptr315 = getelementptr inbounds i8, i8* %tmp201, i64 1
  store i8* %add.ptr315, i8** %digitp313, align 8
  store i64 0, i64* %precision, align 8
  br label %while.cond

while.cond:                                       ; preds = %cond.end324, %if.else311
  %tmp202 = load i8*, i8** %digitp313, align 8
  %tmp203 = load %struct.char_directive*, %struct.char_directive** %dp, align 8
  %precision_end316 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %tmp203, i32 0, i32 7
  %tmp204 = load i8*, i8** %precision_end316, align 8
  %cmp317 = icmp ne i8* %tmp202, %tmp204
  br i1 %cmp317, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %tmp205 = load i64, i64* %precision, align 8
  %cmp319 = icmp ule i64 %tmp205, 1844674407370955161
  br i1 %cmp319, label %cond.true321, label %cond.false323

cond.true321:                                     ; preds = %while.body
  %tmp206 = load i64, i64* %precision, align 8
  %mul322 = mul i64 %tmp206, 10
  store i64 %mul322, i64* %mul322.reg2mem
  %mul322.reload = load i64, i64* %mul322.reg2mem
  store i64 %mul322.reload, i64* %cond325.reg2mem
  br label %cond.end324

cond.false323:                                    ; preds = %while.body
  store i64 -1, i64* %cond325.reg2mem
  br label %cond.end324

cond.end324:                                      ; preds = %cond.false323, %cond.true321
  %cond325.reload = load i64, i64* %cond325.reg2mem
  %tmp207 = load i8*, i8** %digitp313, align 8
  %incdec.ptr326 = getelementptr inbounds i8, i8* %tmp207, i32 1
  store i8* %incdec.ptr326, i8** %digitp313, align 8
  %tmp208 = load i8, i8* %tmp207, align 1
  %conv327 = sext i8 %tmp208 to i32
  %sub328 = sub nsw i32 %conv327, 48
  %conv329 = sext i32 %sub328 to i64
  %call330 = call i64 @xsum(i64 %cond325.reload, i64 %conv329) #13
  store i64 %call330, i64* %precision, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 1, i32* %has_precision, align 4
  br label %if.end331

if.end331:                                        ; preds = %while.end, %if.end310
  br label %if.end332

if.end332:                                        ; preds = %if.end284.if.end332_crit_edge, %if.end331
  %tmp209 = load i32, i32* %has_precision, align 4
  %tobool333 = icmp ne i32 %tmp209, 0
  br i1 %tobool333, label %if.end332.if.end335_crit_edge, label %if.then334

if.end332.if.end335_crit_edge:                    ; preds = %if.end332
  br label %if.end335

if.then334:                                       ; preds = %if.end332
  store i64 6, i64* %precision, align 8
  br label %if.end335

if.end335:                                        ; preds = %if.end332.if.end335_crit_edge, %if.then334
  store i64 0, i64* %tmp_length, align 8
  %tmp210 = load i64, i64* %tmp_length, align 8
  %tmp211 = load i64, i64* %precision, align 8
  %cmp336 = icmp ult i64 %tmp210, %tmp211
  br i1 %cmp336, label %if.then338, label %if.end335.if.end339_crit_edge

if.end335.if.end339_crit_edge:                    ; preds = %if.end335
  br label %if.end339

if.then338:                                       ; preds = %if.end335
  %tmp212 = load i64, i64* %precision, align 8
  store i64 %tmp212, i64* %tmp_length, align 8
  br label %if.end339

if.end339:                                        ; preds = %if.end335.if.end339_crit_edge, %if.then338
  %tmp213 = load i64, i64* %tmp_length, align 8
  %call340 = call i64 @xsum(i64 %tmp213, i64 12) #13
  store i64 %call340, i64* %tmp_length, align 8
  %tmp214 = load i64, i64* %tmp_length, align 8
  %tmp215 = load i64, i64* %width, align 8
  %cmp341 = icmp ult i64 %tmp214, %tmp215
  br i1 %cmp341, label %if.then343, label %if.end339.if.end344_crit_edge

if.end339.if.end344_crit_edge:                    ; preds = %if.end339
  br label %if.end344

if.then343:                                       ; preds = %if.end339
  %tmp216 = load i64, i64* %width, align 8
  store i64 %tmp216, i64* %tmp_length, align 8
  br label %if.end344

if.end344:                                        ; preds = %if.end339.if.end344_crit_edge, %if.then343
  %tmp217 = load i64, i64* %tmp_length, align 8
  %call345 = call i64 @xsum(i64 %tmp217, i64 1) #13
  store i64 %call345, i64* %tmp_length, align 8
  %tmp218 = load i64, i64* %tmp_length, align 8
  %cmp346 = icmp ule i64 %tmp218, 700
  br i1 %cmp346, label %if.then348, label %if.else349

if.then348:                                       ; preds = %if.end344
  %arraydecay = getelementptr inbounds [700 x i8], [700 x i8]* %tmpbuf, i32 0, i32 0
  store i8* %arraydecay, i8** %tmp, align 8
  br label %if.end367

if.else349:                                       ; preds = %if.end344
  %tmp219 = load i64, i64* %tmp_length, align 8
  %cmp351 = icmp ule i64 %tmp219, -1
  br i1 %cmp351, label %cond.true353, label %cond.false355

cond.true353:                                     ; preds = %if.else349
  %tmp220 = load i64, i64* %tmp_length, align 8
  %mul354 = mul i64 %tmp220, 1
  store i64 %mul354, i64* %mul354.reg2mem
  %mul354.reload = load i64, i64* %mul354.reg2mem
  store i64 %mul354.reload, i64* %cond357.reg2mem
  br label %cond.end356

cond.false355:                                    ; preds = %if.else349
  store i64 -1, i64* %cond357.reg2mem
  br label %cond.end356

cond.end356:                                      ; preds = %cond.false355, %cond.true353
  %cond357.reload = load i64, i64* %cond357.reg2mem
  store i64 %cond357.reload, i64* %tmp_memsize, align 8
  %tmp221 = load i64, i64* %tmp_memsize, align 8
  %cmp358 = icmp eq i64 %tmp221, -1
  br i1 %cmp358, label %if.then360, label %if.end361

if.then360:                                       ; preds = %cond.end356
  br label %out_of_memory

if.end361:                                        ; preds = %cond.end356
  %tmp222 = load i64, i64* %tmp_memsize, align 8
  %call362 = call noalias i8* @malloc(i64 %tmp222) #8
  store i8* %call362, i8** %tmp, align 8
  %tmp223 = load i8*, i8** %tmp, align 8
  %cmp363 = icmp eq i8* %tmp223, null
  br i1 %cmp363, label %if.then365, label %if.end366

if.then365:                                       ; preds = %if.end361
  br label %out_of_memory

if.end366:                                        ; preds = %if.end361
  br label %if.end367

if.end367:                                        ; preds = %if.end366, %if.then348
  store i8* null, i8** %pad_ptr, align 8
  %tmp224 = load i8*, i8** %tmp, align 8
  store i8* %tmp224, i8** %p, align 8
  %tmp225 = load %struct.char_directive*, %struct.char_directive** %dp, align 8
  %arg_index370 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %tmp225, i32 0, i32 10
  %tmp226 = load i64, i64* %arg_index370, align 8
  %arg371 = getelementptr inbounds %struct.arguments, %struct.arguments* %a, i32 0, i32 1
  %tmp227 = load %struct.argument*, %struct.argument** %arg371, align 8
  %arrayidx372 = getelementptr inbounds %struct.argument, %struct.argument* %tmp227, i64 %tmp226
  %a373 = getelementptr inbounds %struct.argument, %struct.argument* %arrayidx372, i32 0, i32 1
  %a_longdouble374 = bitcast %union.anon.17* %a373 to x86_fp80*
  %tmp228 = load x86_fp80, x86_fp80* %a_longdouble374, align 16
  store x86_fp80 %tmp228, x86_fp80* %arg369, align 16
  %tmp229 = load x86_fp80, x86_fp80* %arg369, align 16
  %call375 = call i32 @rpl_isnanl(x86_fp80 %tmp229)
  %tobool376 = icmp ne i32 %call375, 0
  br i1 %tobool376, label %if.then377, label %if.else396

if.then377:                                       ; preds = %if.end367
  %tmp230 = load %struct.char_directive*, %struct.char_directive** %dp, align 8
  %conversion378 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %tmp230, i32 0, i32 9
  %tmp231 = load i8, i8* %conversion378, align 1
  %conv379 = sext i8 %tmp231 to i32
  %cmp380 = icmp sge i32 %conv379, 65
  br i1 %cmp380, label %land.lhs.true382, label %if.then377.if.else391_crit_edge

if.then377.if.else391_crit_edge:                  ; preds = %if.then377
  br label %if.else391

land.lhs.true382:                                 ; preds = %if.then377
  %tmp232 = load %struct.char_directive*, %struct.char_directive** %dp, align 8
  %conversion383 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %tmp232, i32 0, i32 9
  %tmp233 = load i8, i8* %conversion383, align 1
  %conv384 = sext i8 %tmp233 to i32
  %cmp385 = icmp sle i32 %conv384, 90
  br i1 %cmp385, label %if.then387, label %land.lhs.true382.if.else391_crit_edge

land.lhs.true382.if.else391_crit_edge:            ; preds = %land.lhs.true382
  br label %if.else391

if.then387:                                       ; preds = %land.lhs.true382
  %tmp234 = load i8*, i8** %p, align 8
  %incdec.ptr388 = getelementptr inbounds i8, i8* %tmp234, i32 1
  store i8* %incdec.ptr388, i8** %p, align 8
  store i8 78, i8* %tmp234, align 1
  %tmp235 = load i8*, i8** %p, align 8
  %incdec.ptr389 = getelementptr inbounds i8, i8* %tmp235, i32 1
  store i8* %incdec.ptr389, i8** %p, align 8
  store i8 65, i8* %tmp235, align 1
  %tmp236 = load i8*, i8** %p, align 8
  %incdec.ptr390 = getelementptr inbounds i8, i8* %tmp236, i32 1
  store i8* %incdec.ptr390, i8** %p, align 8
  store i8 78, i8* %tmp236, align 1
  br label %if.end395

if.else391:                                       ; preds = %land.lhs.true382.if.else391_crit_edge, %if.then377.if.else391_crit_edge
  %tmp237 = load i8*, i8** %p, align 8
  %incdec.ptr392 = getelementptr inbounds i8, i8* %tmp237, i32 1
  store i8* %incdec.ptr392, i8** %p, align 8
  store i8 110, i8* %tmp237, align 1
  %tmp238 = load i8*, i8** %p, align 8
  %incdec.ptr393 = getelementptr inbounds i8, i8* %tmp238, i32 1
  store i8* %incdec.ptr393, i8** %p, align 8
  store i8 97, i8* %tmp238, align 1
  %tmp239 = load i8*, i8** %p, align 8
  %incdec.ptr394 = getelementptr inbounds i8, i8* %tmp239, i32 1
  store i8* %incdec.ptr394, i8** %p, align 8
  store i8 110, i8* %tmp239, align 1
  br label %if.end395

if.end395:                                        ; preds = %if.else391, %if.then387
  br label %if.end459

if.else396:                                       ; preds = %if.end367
  store i32 0, i32* %sign, align 4
  call void asm sideeffect "fnstcw $0", "=*m,~{dirflag},~{fpsr},~{flags}"(i16* %_cw) #8, !srcloc !3
  %tmp240 = load i16, i16* %_cw, align 2
  store i16 %tmp240, i16* %tmp400
  %tmp241 = load i16, i16* %tmp400
  store i16 %tmp241, i16* %oldcw, align 2
  %tmp242 = load i16, i16* %oldcw, align 2
  %conv402 = zext i16 %tmp242 to i32
  %and = and i32 %conv402, -769
  %or403 = or i32 %and, 768
  %conv404 = trunc i32 %or403 to i16
  store i16 %conv404, i16* %_ncw, align 2
  call void asm sideeffect "fldcw $0", "*m,~{dirflag},~{fpsr},~{flags}"(i16* %_ncw) #8, !srcloc !4
  br i1 true, label %cond.true405, label %cond.false406

cond.true405:                                     ; preds = %if.else396
  %tmp243 = load x86_fp80, x86_fp80* %arg369, align 16
  %tmp244 = bitcast x86_fp80 %tmp243 to i80
  %tmp245 = icmp slt i80 %tmp244, 0
  br i1 %tmp245, label %cond.true405.if.then411_crit_edge, label %cond.true405.if.end413_crit_edge

cond.true405.if.end413_crit_edge:                 ; preds = %cond.true405
  br label %if.end413

cond.true405.if.then411_crit_edge:                ; preds = %cond.true405
  br label %if.then411

cond.false406:                                    ; preds = %if.else396
  br i1 false, label %cond.true407, label %cond.false409

cond.true407:                                     ; preds = %cond.false406
  %tmp246 = load x86_fp80, x86_fp80* %arg369, align 16
  %conv408 = fptrunc x86_fp80 %tmp246 to double
  %tmp247 = bitcast double %conv408 to i64
  %tmp248 = icmp slt i64 %tmp247, 0
  br i1 %tmp248, label %cond.true407.if.then411_crit_edge, label %cond.true407.if.end413_crit_edge

cond.true407.if.end413_crit_edge:                 ; preds = %cond.true407
  br label %if.end413

cond.true407.if.then411_crit_edge:                ; preds = %cond.true407
  br label %if.then411

cond.false409:                                    ; preds = %cond.false406
  %tmp249 = load x86_fp80, x86_fp80* %arg369, align 16
  %conv410 = fptrunc x86_fp80 %tmp249 to float
  %tmp250 = bitcast float %conv410 to i32
  %tmp251 = icmp slt i32 %tmp250, 0
  br i1 %tmp251, label %cond.false409.if.then411_crit_edge, label %cond.false409.if.end413_crit_edge

cond.false409.if.end413_crit_edge:                ; preds = %cond.false409
  br label %if.end413

cond.false409.if.then411_crit_edge:               ; preds = %cond.false409
  br label %if.then411

if.then411:                                       ; preds = %cond.false409.if.then411_crit_edge, %cond.true407.if.then411_crit_edge, %cond.true405.if.then411_crit_edge
  store i32 -1, i32* %sign, align 4
  %tmp252 = load x86_fp80, x86_fp80* %arg369, align 16
  %sub412 = fsub x86_fp80 0xK80000000000000000000, %tmp252
  store x86_fp80 %sub412, x86_fp80* %arg369, align 16
  br label %if.end413

if.end413:                                        ; preds = %cond.false409.if.end413_crit_edge, %cond.true407.if.end413_crit_edge, %cond.true405.if.end413_crit_edge, %if.then411
  %tmp253 = load i32, i32* %sign, align 4
  %cmp414 = icmp slt i32 %tmp253, 0
  br i1 %cmp414, label %if.then416, label %if.else418

if.then416:                                       ; preds = %if.end413
  %tmp254 = load i8*, i8** %p, align 8
  %incdec.ptr417 = getelementptr inbounds i8, i8* %tmp254, i32 1
  store i8* %incdec.ptr417, i8** %p, align 8
  store i8 45, i8* %tmp254, align 1
  br label %if.end430

if.else418:                                       ; preds = %if.end413
  %tmp255 = load i32, i32* %flags, align 4
  %and419 = and i32 %tmp255, 4
  %tobool420 = icmp ne i32 %and419, 0
  br i1 %tobool420, label %if.then421, label %if.else423

if.then421:                                       ; preds = %if.else418
  %tmp256 = load i8*, i8** %p, align 8
  %incdec.ptr422 = getelementptr inbounds i8, i8* %tmp256, i32 1
  store i8* %incdec.ptr422, i8** %p, align 8
  store i8 43, i8* %tmp256, align 1
  br label %if.end429

if.else423:                                       ; preds = %if.else418
  %tmp257 = load i32, i32* %flags, align 4
  %and424 = and i32 %tmp257, 8
  %tobool425 = icmp ne i32 %and424, 0
  br i1 %tobool425, label %if.then426, label %if.else423.if.end428_crit_edge

if.else423.if.end428_crit_edge:                   ; preds = %if.else423
  br label %if.end428

if.then426:                                       ; preds = %if.else423
  %tmp258 = load i8*, i8** %p, align 8
  %incdec.ptr427 = getelementptr inbounds i8, i8* %tmp258, i32 1
  store i8* %incdec.ptr427, i8** %p, align 8
  store i8 32, i8* %tmp258, align 1
  br label %if.end428

if.end428:                                        ; preds = %if.else423.if.end428_crit_edge, %if.then426
  br label %if.end429

if.end429:                                        ; preds = %if.end428, %if.then421
  br label %if.end430

if.end430:                                        ; preds = %if.end429, %if.then416
  %tmp259 = load x86_fp80, x86_fp80* %arg369, align 16
  %cmp431 = fcmp ogt x86_fp80 %tmp259, 0xK00000000000000000000
  br i1 %cmp431, label %land.lhs.true433, label %if.end430.if.else455_crit_edge

if.end430.if.else455_crit_edge:                   ; preds = %if.end430
  br label %if.else455

land.lhs.true433:                                 ; preds = %if.end430
  %tmp260 = load x86_fp80, x86_fp80* %arg369, align 16
  %tmp261 = load x86_fp80, x86_fp80* %arg369, align 16
  %add = fadd x86_fp80 %tmp260, %tmp261
  %tmp262 = load x86_fp80, x86_fp80* %arg369, align 16
  %cmp434 = fcmp oeq x86_fp80 %add, %tmp262
  br i1 %cmp434, label %if.then436, label %land.lhs.true433.if.else455_crit_edge

land.lhs.true433.if.else455_crit_edge:            ; preds = %land.lhs.true433
  br label %if.else455

if.then436:                                       ; preds = %land.lhs.true433
  %tmp263 = load %struct.char_directive*, %struct.char_directive** %dp, align 8
  %conversion437 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %tmp263, i32 0, i32 9
  %tmp264 = load i8, i8* %conversion437, align 1
  %conv438 = sext i8 %tmp264 to i32
  %cmp439 = icmp sge i32 %conv438, 65
  br i1 %cmp439, label %land.lhs.true441, label %if.then436.if.else450_crit_edge

if.then436.if.else450_crit_edge:                  ; preds = %if.then436
  br label %if.else450

land.lhs.true441:                                 ; preds = %if.then436
  %tmp265 = load %struct.char_directive*, %struct.char_directive** %dp, align 8
  %conversion442 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %tmp265, i32 0, i32 9
  %tmp266 = load i8, i8* %conversion442, align 1
  %conv443 = sext i8 %tmp266 to i32
  %cmp444 = icmp sle i32 %conv443, 90
  br i1 %cmp444, label %if.then446, label %land.lhs.true441.if.else450_crit_edge

land.lhs.true441.if.else450_crit_edge:            ; preds = %land.lhs.true441
  br label %if.else450

if.then446:                                       ; preds = %land.lhs.true441
  %tmp267 = load i8*, i8** %p, align 8
  %incdec.ptr447 = getelementptr inbounds i8, i8* %tmp267, i32 1
  store i8* %incdec.ptr447, i8** %p, align 8
  store i8 73, i8* %tmp267, align 1
  %tmp268 = load i8*, i8** %p, align 8
  %incdec.ptr448 = getelementptr inbounds i8, i8* %tmp268, i32 1
  store i8* %incdec.ptr448, i8** %p, align 8
  store i8 78, i8* %tmp268, align 1
  %tmp269 = load i8*, i8** %p, align 8
  %incdec.ptr449 = getelementptr inbounds i8, i8* %tmp269, i32 1
  store i8* %incdec.ptr449, i8** %p, align 8
  store i8 70, i8* %tmp269, align 1
  br label %if.end454

if.else450:                                       ; preds = %land.lhs.true441.if.else450_crit_edge, %if.then436.if.else450_crit_edge
  %tmp270 = load i8*, i8** %p, align 8
  %incdec.ptr451 = getelementptr inbounds i8, i8* %tmp270, i32 1
  store i8* %incdec.ptr451, i8** %p, align 8
  store i8 105, i8* %tmp270, align 1
  %tmp271 = load i8*, i8** %p, align 8
  %incdec.ptr452 = getelementptr inbounds i8, i8* %tmp271, i32 1
  store i8* %incdec.ptr452, i8** %p, align 8
  store i8 110, i8* %tmp271, align 1
  %tmp272 = load i8*, i8** %p, align 8
  %incdec.ptr453 = getelementptr inbounds i8, i8* %tmp272, i32 1
  store i8* %incdec.ptr453, i8** %p, align 8
  store i8 102, i8* %tmp272, align 1
  br label %if.end454

if.end454:                                        ; preds = %if.else450, %if.then446
  br label %if.end456

if.else455:                                       ; preds = %land.lhs.true433.if.else455_crit_edge, %if.end430.if.else455_crit_edge
  call void @abort() #12
  unreachable

if.end456:                                        ; preds = %if.end454
  %tmp273 = load i16, i16* %oldcw, align 2
  store i16 %tmp273, i16* %_ncw458, align 2
  call void asm sideeffect "fldcw $0", "*m,~{dirflag},~{fpsr},~{flags}"(i16* %_ncw458) #8, !srcloc !5
  br label %if.end459

if.end459:                                        ; preds = %if.end456, %if.end395
  %tmp274 = load i32, i32* %has_width, align 4
  %tobool460 = icmp ne i32 %tmp274, 0
  br i1 %tobool460, label %land.lhs.true461, label %if.end459.if.end525_crit_edge

if.end459.if.end525_crit_edge:                    ; preds = %if.end459
  br label %if.end525

land.lhs.true461:                                 ; preds = %if.end459
  %tmp275 = load i8*, i8** %p, align 8
  %tmp276 = load i8*, i8** %tmp, align 8
  %sub.ptr.lhs.cast462 = ptrtoint i8* %tmp275 to i64
  %sub.ptr.rhs.cast463 = ptrtoint i8* %tmp276 to i64
  %sub.ptr.sub464 = sub i64 %sub.ptr.lhs.cast462, %sub.ptr.rhs.cast463
  %tmp277 = load i64, i64* %width, align 8
  %cmp465 = icmp ult i64 %sub.ptr.sub464, %tmp277
  br i1 %cmp465, label %if.then467, label %land.lhs.true461.if.end525_crit_edge

land.lhs.true461.if.end525_crit_edge:             ; preds = %land.lhs.true461
  br label %if.end525

if.then467:                                       ; preds = %land.lhs.true461
  %tmp278 = load i64, i64* %width, align 8
  %tmp279 = load i8*, i8** %p, align 8
  %tmp280 = load i8*, i8** %tmp, align 8
  %sub.ptr.lhs.cast469 = ptrtoint i8* %tmp279 to i64
  %sub.ptr.rhs.cast470 = ptrtoint i8* %tmp280 to i64
  %sub.ptr.sub471 = sub i64 %sub.ptr.lhs.cast469, %sub.ptr.rhs.cast470
  %sub472 = sub i64 %tmp278, %sub.ptr.sub471
  store i64 %sub472, i64* %pad, align 8
  %tmp281 = load i8*, i8** %p, align 8
  %tmp282 = load i64, i64* %pad, align 8
  %add.ptr474 = getelementptr inbounds i8, i8* %tmp281, i64 %tmp282
  store i8* %add.ptr474, i8** %end, align 8
  %tmp283 = load i32, i32* %flags, align 4
  %and475 = and i32 %tmp283, 2
  %tobool476 = icmp ne i32 %and475, 0
  br i1 %tobool476, label %if.then477, label %if.else482

if.then477:                                       ; preds = %if.then467
  br label %for.cond478

for.cond478:                                      ; preds = %for.inc, %if.then477
  %tmp284 = load i64, i64* %pad, align 8
  %cmp479 = icmp ugt i64 %tmp284, 0
  br i1 %cmp479, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond478
  %tmp285 = load i8*, i8** %p, align 8
  %incdec.ptr481 = getelementptr inbounds i8, i8* %tmp285, i32 1
  store i8* %incdec.ptr481, i8** %p, align 8
  store i8 32, i8* %tmp285, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %tmp286 = load i64, i64* %pad, align 8
  %dec = add i64 %tmp286, -1
  store i64 %dec, i64* %pad, align 8
  br label %for.cond478

for.end:                                          ; preds = %for.cond478
  br label %if.end524

if.else482:                                       ; preds = %if.then467
  %tmp287 = load i32, i32* %flags, align 4
  %and483 = and i32 %tmp287, 32
  %tobool484 = icmp ne i32 %and483, 0
  br i1 %tobool484, label %land.lhs.true485, label %if.else482.if.else505_crit_edge

if.else482.if.else505_crit_edge:                  ; preds = %if.else482
  br label %if.else505

land.lhs.true485:                                 ; preds = %if.else482
  %tmp288 = load i8*, i8** %pad_ptr, align 8
  %cmp486 = icmp ne i8* %tmp288, null
  br i1 %cmp486, label %if.then488, label %land.lhs.true485.if.else505_crit_edge

land.lhs.true485.if.else505_crit_edge:            ; preds = %land.lhs.true485
  br label %if.else505

if.then488:                                       ; preds = %land.lhs.true485
  %tmp289 = load i8*, i8** %end, align 8
  store i8* %tmp289, i8** %q, align 8
  br label %while.cond490

while.cond490:                                    ; preds = %while.body493, %if.then488
  %tmp290 = load i8*, i8** %p, align 8
  %tmp291 = load i8*, i8** %pad_ptr, align 8
  %cmp491 = icmp ugt i8* %tmp290, %tmp291
  br i1 %cmp491, label %while.body493, label %while.end496

while.body493:                                    ; preds = %while.cond490
  %tmp292 = load i8*, i8** %p, align 8
  %incdec.ptr494 = getelementptr inbounds i8, i8* %tmp292, i32 -1
  store i8* %incdec.ptr494, i8** %p, align 8
  %tmp293 = load i8, i8* %incdec.ptr494, align 1
  %tmp294 = load i8*, i8** %q, align 8
  %incdec.ptr495 = getelementptr inbounds i8, i8* %tmp294, i32 -1
  store i8* %incdec.ptr495, i8** %q, align 8
  store i8 %tmp293, i8* %incdec.ptr495, align 1
  br label %while.cond490

while.end496:                                     ; preds = %while.cond490
  br label %for.cond497

for.cond497:                                      ; preds = %for.inc502, %while.end496
  %tmp295 = load i64, i64* %pad, align 8
  %cmp498 = icmp ugt i64 %tmp295, 0
  br i1 %cmp498, label %for.body500, label %for.end504

for.body500:                                      ; preds = %for.cond497
  %tmp296 = load i8*, i8** %p, align 8
  %incdec.ptr501 = getelementptr inbounds i8, i8* %tmp296, i32 1
  store i8* %incdec.ptr501, i8** %p, align 8
  store i8 48, i8* %tmp296, align 1
  br label %for.inc502

for.inc502:                                       ; preds = %for.body500
  %tmp297 = load i64, i64* %pad, align 8
  %dec503 = add i64 %tmp297, -1
  store i64 %dec503, i64* %pad, align 8
  br label %for.cond497

for.end504:                                       ; preds = %for.cond497
  br label %if.end523

if.else505:                                       ; preds = %land.lhs.true485.if.else505_crit_edge, %if.else482.if.else505_crit_edge
  %tmp298 = load i8*, i8** %end, align 8
  store i8* %tmp298, i8** %q507, align 8
  br label %while.cond508

while.cond508:                                    ; preds = %while.body511, %if.else505
  %tmp299 = load i8*, i8** %p, align 8
  %tmp300 = load i8*, i8** %tmp, align 8
  %cmp509 = icmp ugt i8* %tmp299, %tmp300
  br i1 %cmp509, label %while.body511, label %while.end514

while.body511:                                    ; preds = %while.cond508
  %tmp301 = load i8*, i8** %p, align 8
  %incdec.ptr512 = getelementptr inbounds i8, i8* %tmp301, i32 -1
  store i8* %incdec.ptr512, i8** %p, align 8
  %tmp302 = load i8, i8* %incdec.ptr512, align 1
  %tmp303 = load i8*, i8** %q507, align 8
  %incdec.ptr513 = getelementptr inbounds i8, i8* %tmp303, i32 -1
  store i8* %incdec.ptr513, i8** %q507, align 8
  store i8 %tmp302, i8* %incdec.ptr513, align 1
  br label %while.cond508

while.end514:                                     ; preds = %while.cond508
  br label %for.cond515

for.cond515:                                      ; preds = %for.inc520, %while.end514
  %tmp304 = load i64, i64* %pad, align 8
  %cmp516 = icmp ugt i64 %tmp304, 0
  br i1 %cmp516, label %for.body518, label %for.end522

for.body518:                                      ; preds = %for.cond515
  %tmp305 = load i8*, i8** %p, align 8
  %incdec.ptr519 = getelementptr inbounds i8, i8* %tmp305, i32 1
  store i8* %incdec.ptr519, i8** %p, align 8
  store i8 32, i8* %tmp305, align 1
  br label %for.inc520

for.inc520:                                       ; preds = %for.body518
  %tmp306 = load i64, i64* %pad, align 8
  %dec521 = add i64 %tmp306, -1
  store i64 %dec521, i64* %pad, align 8
  br label %for.cond515

for.end522:                                       ; preds = %for.cond515
  br label %if.end523

if.end523:                                        ; preds = %for.end522, %for.end504
  br label %if.end524

if.end524:                                        ; preds = %if.end523, %for.end
  %tmp307 = load i8*, i8** %end, align 8
  store i8* %tmp307, i8** %p, align 8
  br label %if.end525

if.end525:                                        ; preds = %land.lhs.true461.if.end525_crit_edge, %if.end459.if.end525_crit_edge, %if.end524
  %tmp308 = load i8*, i8** %p, align 8
  %tmp309 = load i8*, i8** %tmp, align 8
  %sub.ptr.lhs.cast528 = ptrtoint i8* %tmp308 to i64
  %sub.ptr.rhs.cast529 = ptrtoint i8* %tmp309 to i64
  %sub.ptr.sub530 = sub i64 %sub.ptr.lhs.cast528, %sub.ptr.rhs.cast529
  store i64 %sub.ptr.sub530, i64* %count527, align 8
  %tmp310 = load i64, i64* %count527, align 8
  %tmp311 = load i64, i64* %tmp_length, align 8
  %cmp531 = icmp uge i64 %tmp310, %tmp311
  br i1 %cmp531, label %if.then533, label %if.end534

if.then533:                                       ; preds = %if.end525
  call void @abort() #12
  unreachable

if.end534:                                        ; preds = %if.end525
  %tmp312 = load i64, i64* %count527, align 8
  %tmp313 = load i64, i64* %allocated, align 8
  %tmp314 = load i64, i64* %length, align 8
  %sub535 = sub i64 %tmp313, %tmp314
  %cmp536 = icmp uge i64 %tmp312, %sub535
  br i1 %cmp536, label %if.then538, label %if.end534.if.end599_crit_edge

if.end534.if.end599_crit_edge:                    ; preds = %if.end534
  br label %if.end599

if.then538:                                       ; preds = %if.end534
  %tmp315 = load i64, i64* %length, align 8
  %tmp316 = load i64, i64* %count527, align 8
  %call541 = call i64 @xsum(i64 %tmp315, i64 %tmp316) #13
  store i64 %call541, i64* %n540, align 8
  %tmp317 = load i64, i64* %n540, align 8
  %tmp318 = load i64, i64* %allocated, align 8
  %cmp542 = icmp ugt i64 %tmp317, %tmp318
  br i1 %cmp542, label %if.then544, label %if.then538.if.end598_crit_edge

if.then538.if.end598_crit_edge:                   ; preds = %if.then538
  br label %if.end598

if.then544:                                       ; preds = %if.then538
  %tmp319 = load i64, i64* %allocated, align 8
  %cmp549 = icmp ugt i64 %tmp319, 0
  br i1 %cmp549, label %cond.true551, label %cond.false559

cond.true551:                                     ; preds = %if.then544
  %tmp320 = load i64, i64* %allocated, align 8
  %cmp552 = icmp ule i64 %tmp320, 9223372036854775807
  br i1 %cmp552, label %cond.true554, label %cond.false556

cond.true554:                                     ; preds = %cond.true551
  %tmp321 = load i64, i64* %allocated, align 8
  %mul555 = mul i64 %tmp321, 2
  store i64 %mul555, i64* %mul555.reg2mem
  %mul555.reload = load i64, i64* %mul555.reg2mem
  store i64 %mul555.reload, i64* %cond558.reg2mem1024
  br label %cond.end557

cond.false556:                                    ; preds = %cond.true551
  store i64 -1, i64* %cond558.reg2mem1024
  br label %cond.end557

cond.end557:                                      ; preds = %cond.false556, %cond.true554
  %cond558.reload1025 = load i64, i64* %cond558.reg2mem1024
  store i64 %cond558.reload1025, i64* %cond558.reg2mem
  %cond558.reload = load i64, i64* %cond558.reg2mem
  store i64 %cond558.reload, i64* %cond561.reg2mem
  br label %cond.end560

cond.false559:                                    ; preds = %if.then544
  store i64 12, i64* %cond561.reg2mem
  br label %cond.end560

cond.end560:                                      ; preds = %cond.false559, %cond.end557
  %cond561.reload = load i64, i64* %cond561.reg2mem
  store i64 %cond561.reload, i64* %allocated, align 8
  %tmp322 = load i64, i64* %n540, align 8
  %tmp323 = load i64, i64* %allocated, align 8
  %cmp562 = icmp ugt i64 %tmp322, %tmp323
  br i1 %cmp562, label %if.then564, label %cond.end560.if.end565_crit_edge

cond.end560.if.end565_crit_edge:                  ; preds = %cond.end560
  br label %if.end565

if.then564:                                       ; preds = %cond.end560
  %tmp324 = load i64, i64* %n540, align 8
  store i64 %tmp324, i64* %allocated, align 8
  br label %if.end565

if.end565:                                        ; preds = %cond.end560.if.end565_crit_edge, %if.then564
  %tmp325 = load i64, i64* %allocated, align 8
  %cmp566 = icmp ule i64 %tmp325, -1
  br i1 %cmp566, label %cond.true568, label %cond.false570

cond.true568:                                     ; preds = %if.end565
  %tmp326 = load i64, i64* %allocated, align 8
  %mul569 = mul i64 %tmp326, 1
  store i64 %mul569, i64* %mul569.reg2mem
  %mul569.reload = load i64, i64* %mul569.reg2mem
  store i64 %mul569.reload, i64* %cond572.reg2mem
  br label %cond.end571

cond.false570:                                    ; preds = %if.end565
  store i64 -1, i64* %cond572.reg2mem
  br label %cond.end571

cond.end571:                                      ; preds = %cond.false570, %cond.true568
  %cond572.reload = load i64, i64* %cond572.reg2mem
  store i64 %cond572.reload, i64* %memory_size546, align 8
  %tmp327 = load i64, i64* %memory_size546, align 8
  %cmp573 = icmp eq i64 %tmp327, -1
  br i1 %cmp573, label %if.then575, label %if.end576

if.then575:                                       ; preds = %cond.end571
  br label %out_of_memory

if.end576:                                        ; preds = %cond.end571
  %tmp328 = load i8*, i8** %result, align 8
  %tmp329 = load i8*, i8** %resultbuf.addr, align 8
  %cmp577 = icmp eq i8* %tmp328, %tmp329
  br i1 %cmp577, label %if.end576.if.then582_crit_edge, label %lor.lhs.false579

if.end576.if.then582_crit_edge:                   ; preds = %if.end576
  br label %if.then582

lor.lhs.false579:                                 ; preds = %if.end576
  %tmp330 = load i8*, i8** %result, align 8
  %cmp580 = icmp eq i8* %tmp330, null
  br i1 %cmp580, label %lor.lhs.false579.if.then582_crit_edge, label %if.else584

lor.lhs.false579.if.then582_crit_edge:            ; preds = %lor.lhs.false579
  br label %if.then582

if.then582:                                       ; preds = %lor.lhs.false579.if.then582_crit_edge, %if.end576.if.then582_crit_edge
  %tmp331 = load i64, i64* %memory_size546, align 8
  %call583 = call noalias i8* @malloc(i64 %tmp331) #8
  store i8* %call583, i8** %memory548, align 8
  br label %if.end586

if.else584:                                       ; preds = %lor.lhs.false579
  %tmp332 = load i8*, i8** %result, align 8
  %tmp333 = load i64, i64* %memory_size546, align 8
  %call585 = call i8* @realloc(i8* %tmp332, i64 %tmp333) #8
  store i8* %call585, i8** %memory548, align 8
  br label %if.end586

if.end586:                                        ; preds = %if.else584, %if.then582
  %tmp334 = load i8*, i8** %memory548, align 8
  %cmp587 = icmp eq i8* %tmp334, null
  br i1 %cmp587, label %if.then589, label %if.end590

if.then589:                                       ; preds = %if.end586
  br label %out_of_memory

if.end590:                                        ; preds = %if.end586
  %tmp335 = load i8*, i8** %result, align 8
  %tmp336 = load i8*, i8** %resultbuf.addr, align 8
  %cmp591 = icmp eq i8* %tmp335, %tmp336
  br i1 %cmp591, label %land.lhs.true593, label %if.end590.if.end597_crit_edge

if.end590.if.end597_crit_edge:                    ; preds = %if.end590
  br label %if.end597

land.lhs.true593:                                 ; preds = %if.end590
  %tmp337 = load i64, i64* %length, align 8
  %cmp594 = icmp ugt i64 %tmp337, 0
  br i1 %cmp594, label %if.then596, label %land.lhs.true593.if.end597_crit_edge

land.lhs.true593.if.end597_crit_edge:             ; preds = %land.lhs.true593
  br label %if.end597

if.then596:                                       ; preds = %land.lhs.true593
  %tmp338 = load i8*, i8** %memory548, align 8
  %tmp339 = load i8*, i8** %result, align 8
  %tmp340 = load i64, i64* %length, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %tmp338, i8* %tmp339, i64 %tmp340, i32 1, i1 false)
  br label %if.end597

if.end597:                                        ; preds = %land.lhs.true593.if.end597_crit_edge, %if.end590.if.end597_crit_edge, %if.then596
  %tmp341 = load i8*, i8** %memory548, align 8
  store i8* %tmp341, i8** %result, align 8
  br label %if.end598

if.end598:                                        ; preds = %if.then538.if.end598_crit_edge, %if.end597
  br label %if.end599

if.end599:                                        ; preds = %if.end534.if.end599_crit_edge, %if.end598
  %tmp342 = load i8*, i8** %result, align 8
  %tmp343 = load i64, i64* %length, align 8
  %add.ptr600 = getelementptr inbounds i8, i8* %tmp342, i64 %tmp343
  %tmp344 = load i8*, i8** %tmp, align 8
  %tmp345 = load i64, i64* %count527, align 8
  %mul601 = mul i64 %tmp345, 1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr600, i8* %tmp344, i64 %mul601, i32 1, i1 false)
  %tmp346 = load i8*, i8** %tmp, align 8
  %arraydecay602 = getelementptr inbounds [700 x i8], [700 x i8]* %tmpbuf, i32 0, i32 0
  %cmp603 = icmp ne i8* %tmp346, %arraydecay602
  br i1 %cmp603, label %if.then605, label %if.end599.if.end606_crit_edge

if.end599.if.end606_crit_edge:                    ; preds = %if.end599
  br label %if.end606

if.then605:                                       ; preds = %if.end599
  %tmp347 = load i8*, i8** %tmp, align 8
  call void @free(i8* %tmp347) #8
  br label %if.end606

if.end606:                                        ; preds = %if.end599.if.end606_crit_edge, %if.then605
  %tmp348 = load i64, i64* %count527, align 8
  %tmp349 = load i64, i64* %length, align 8
  %add607 = add i64 %tmp349, %tmp348
  store i64 %add607, i64* %length, align 8
  br label %if.end1378

if.else608:                                       ; preds = %land.lhs.true228.if.else608_crit_edge, %land.lhs.true221.if.else608_crit_edge, %lor.lhs.false216.if.else608_crit_edge
  %tmp350 = load %struct.char_directive*, %struct.char_directive** %dp, align 8
  %arg_index611 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %tmp350, i32 0, i32 10
  %tmp351 = load i64, i64* %arg_index611, align 8
  %arg612 = getelementptr inbounds %struct.arguments, %struct.arguments* %a, i32 0, i32 1
  %tmp352 = load %struct.argument*, %struct.argument** %arg612, align 8
  %arrayidx613 = getelementptr inbounds %struct.argument, %struct.argument* %tmp352, i64 %tmp351
  %type614 = getelementptr inbounds %struct.argument, %struct.argument* %arrayidx613, i32 0, i32 0
  %tmp353 = load i32, i32* %type614, align 4
  store i32 %tmp353, i32* %type610, align 4
  %tmp354 = load %struct.char_directive*, %struct.char_directive** %dp, align 8
  %flags617 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %tmp354, i32 0, i32 2
  %tmp355 = load i32, i32* %flags617, align 4
  store i32 %tmp355, i32* %flags616, align 4
  %tmp356 = load i8*, i8** %buf, align 8
  store i8* %tmp356, i8** %fbp, align 8
  %tmp357 = load i8*, i8** %fbp, align 8
  %incdec.ptr621 = getelementptr inbounds i8, i8* %tmp357, i32 1
  store i8* %incdec.ptr621, i8** %fbp, align 8
  store i8 37, i8* %tmp357, align 1
  %tmp358 = load i32, i32* %flags616, align 4
  %and622 = and i32 %tmp358, 1
  %tobool623 = icmp ne i32 %and622, 0
  br i1 %tobool623, label %if.then624, label %if.else608.if.end626_crit_edge

if.else608.if.end626_crit_edge:                   ; preds = %if.else608
  br label %if.end626

if.then624:                                       ; preds = %if.else608
  %tmp359 = load i8*, i8** %fbp, align 8
  %incdec.ptr625 = getelementptr inbounds i8, i8* %tmp359, i32 1
  store i8* %incdec.ptr625, i8** %fbp, align 8
  store i8 39, i8* %tmp359, align 1
  br label %if.end626

if.end626:                                        ; preds = %if.else608.if.end626_crit_edge, %if.then624
  %tmp360 = load i32, i32* %flags616, align 4
  %and627 = and i32 %tmp360, 2
  %tobool628 = icmp ne i32 %and627, 0
  br i1 %tobool628, label %if.then629, label %if.end626.if.end631_crit_edge

if.end626.if.end631_crit_edge:                    ; preds = %if.end626
  br label %if.end631

if.then629:                                       ; preds = %if.end626
  %tmp361 = load i8*, i8** %fbp, align 8
  %incdec.ptr630 = getelementptr inbounds i8, i8* %tmp361, i32 1
  store i8* %incdec.ptr630, i8** %fbp, align 8
  store i8 45, i8* %tmp361, align 1
  br label %if.end631

if.end631:                                        ; preds = %if.end626.if.end631_crit_edge, %if.then629
  %tmp362 = load i32, i32* %flags616, align 4
  %and632 = and i32 %tmp362, 4
  %tobool633 = icmp ne i32 %and632, 0
  br i1 %tobool633, label %if.then634, label %if.end631.if.end636_crit_edge

if.end631.if.end636_crit_edge:                    ; preds = %if.end631
  br label %if.end636

if.then634:                                       ; preds = %if.end631
  %tmp363 = load i8*, i8** %fbp, align 8
  %incdec.ptr635 = getelementptr inbounds i8, i8* %tmp363, i32 1
  store i8* %incdec.ptr635, i8** %fbp, align 8
  store i8 43, i8* %tmp363, align 1
  br label %if.end636

if.end636:                                        ; preds = %if.end631.if.end636_crit_edge, %if.then634
  %tmp364 = load i32, i32* %flags616, align 4
  %and637 = and i32 %tmp364, 8
  %tobool638 = icmp ne i32 %and637, 0
  br i1 %tobool638, label %if.then639, label %if.end636.if.end641_crit_edge

if.end636.if.end641_crit_edge:                    ; preds = %if.end636
  br label %if.end641

if.then639:                                       ; preds = %if.end636
  %tmp365 = load i8*, i8** %fbp, align 8
  %incdec.ptr640 = getelementptr inbounds i8, i8* %tmp365, i32 1
  store i8* %incdec.ptr640, i8** %fbp, align 8
  store i8 32, i8* %tmp365, align 1
  br label %if.end641

if.end641:                                        ; preds = %if.end636.if.end641_crit_edge, %if.then639
  %tmp366 = load i32, i32* %flags616, align 4
  %and642 = and i32 %tmp366, 16
  %tobool643 = icmp ne i32 %and642, 0
  br i1 %tobool643, label %if.then644, label %if.end641.if.end646_crit_edge

if.end641.if.end646_crit_edge:                    ; preds = %if.end641
  br label %if.end646

if.then644:                                       ; preds = %if.end641
  %tmp367 = load i8*, i8** %fbp, align 8
  %incdec.ptr645 = getelementptr inbounds i8, i8* %tmp367, i32 1
  store i8* %incdec.ptr645, i8** %fbp, align 8
  store i8 35, i8* %tmp367, align 1
  br label %if.end646

if.end646:                                        ; preds = %if.end641.if.end646_crit_edge, %if.then644
  %tmp368 = load i32, i32* %flags616, align 4
  %and647 = and i32 %tmp368, 32
  %tobool648 = icmp ne i32 %and647, 0
  br i1 %tobool648, label %if.then649, label %if.end646.if.end651_crit_edge

if.end646.if.end651_crit_edge:                    ; preds = %if.end646
  br label %if.end651

if.then649:                                       ; preds = %if.end646
  %tmp369 = load i8*, i8** %fbp, align 8
  %incdec.ptr650 = getelementptr inbounds i8, i8* %tmp369, i32 1
  store i8* %incdec.ptr650, i8** %fbp, align 8
  store i8 48, i8* %tmp369, align 1
  br label %if.end651

if.end651:                                        ; preds = %if.end646.if.end651_crit_edge, %if.then649
  %tmp370 = load %struct.char_directive*, %struct.char_directive** %dp, align 8
  %width_start652 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %tmp370, i32 0, i32 3
  %tmp371 = load i8*, i8** %width_start652, align 8
  %tmp372 = load %struct.char_directive*, %struct.char_directive** %dp, align 8
  %width_end653 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %tmp372, i32 0, i32 4
  %tmp373 = load i8*, i8** %width_end653, align 8
  %cmp654 = icmp ne i8* %tmp371, %tmp373
  br i1 %cmp654, label %if.then656, label %if.end651.if.end667_crit_edge

if.end651.if.end667_crit_edge:                    ; preds = %if.end651
  br label %if.end667

if.then656:                                       ; preds = %if.end651
  %tmp374 = load %struct.char_directive*, %struct.char_directive** %dp, align 8
  %width_end659 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %tmp374, i32 0, i32 4
  %tmp375 = load i8*, i8** %width_end659, align 8
  %tmp376 = load %struct.char_directive*, %struct.char_directive** %dp, align 8
  %width_start660 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %tmp376, i32 0, i32 3
  %tmp377 = load i8*, i8** %width_start660, align 8
  %sub.ptr.lhs.cast661 = ptrtoint i8* %tmp375 to i64
  %sub.ptr.rhs.cast662 = ptrtoint i8* %tmp377 to i64
  %sub.ptr.sub663 = sub i64 %sub.ptr.lhs.cast661, %sub.ptr.rhs.cast662
  store i64 %sub.ptr.sub663, i64* %n658, align 8
  %tmp378 = load i8*, i8** %fbp, align 8
  %tmp379 = load %struct.char_directive*, %struct.char_directive** %dp, align 8
  %width_start664 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %tmp379, i32 0, i32 3
  %tmp380 = load i8*, i8** %width_start664, align 8
  %tmp381 = load i64, i64* %n658, align 8
  %mul665 = mul i64 %tmp381, 1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %tmp378, i8* %tmp380, i64 %mul665, i32 1, i1 false)
  %tmp382 = load i64, i64* %n658, align 8
  %tmp383 = load i8*, i8** %fbp, align 8
  %add.ptr666 = getelementptr inbounds i8, i8* %tmp383, i64 %tmp382
  store i8* %add.ptr666, i8** %fbp, align 8
  br label %if.end667

if.end667:                                        ; preds = %if.end651.if.end667_crit_edge, %if.then656
  %tmp384 = load %struct.char_directive*, %struct.char_directive** %dp, align 8
  %precision_start668 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %tmp384, i32 0, i32 6
  %tmp385 = load i8*, i8** %precision_start668, align 8
  %tmp386 = load %struct.char_directive*, %struct.char_directive** %dp, align 8
  %precision_end669 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %tmp386, i32 0, i32 7
  %tmp387 = load i8*, i8** %precision_end669, align 8
  %cmp670 = icmp ne i8* %tmp385, %tmp387
  br i1 %cmp670, label %if.then672, label %if.end667.if.end683_crit_edge

if.end667.if.end683_crit_edge:                    ; preds = %if.end667
  br label %if.end683

if.then672:                                       ; preds = %if.end667
  %tmp388 = load %struct.char_directive*, %struct.char_directive** %dp, align 8
  %precision_end675 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %tmp388, i32 0, i32 7
  %tmp389 = load i8*, i8** %precision_end675, align 8
  %tmp390 = load %struct.char_directive*, %struct.char_directive** %dp, align 8
  %precision_start676 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %tmp390, i32 0, i32 6
  %tmp391 = load i8*, i8** %precision_start676, align 8
  %sub.ptr.lhs.cast677 = ptrtoint i8* %tmp389 to i64
  %sub.ptr.rhs.cast678 = ptrtoint i8* %tmp391 to i64
  %sub.ptr.sub679 = sub i64 %sub.ptr.lhs.cast677, %sub.ptr.rhs.cast678
  store i64 %sub.ptr.sub679, i64* %n674, align 8
  %tmp392 = load i8*, i8** %fbp, align 8
  %tmp393 = load %struct.char_directive*, %struct.char_directive** %dp, align 8
  %precision_start680 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %tmp393, i32 0, i32 6
  %tmp394 = load i8*, i8** %precision_start680, align 8
  %tmp395 = load i64, i64* %n674, align 8
  %mul681 = mul i64 %tmp395, 1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %tmp392, i8* %tmp394, i64 %mul681, i32 1, i1 false)
  %tmp396 = load i64, i64* %n674, align 8
  %tmp397 = load i8*, i8** %fbp, align 8
  %add.ptr682 = getelementptr inbounds i8, i8* %tmp397, i64 %tmp396
  store i8* %add.ptr682, i8** %fbp, align 8
  br label %if.end683

if.end683:                                        ; preds = %if.end667.if.end683_crit_edge, %if.then672
  %tmp398 = load i32, i32* %type610, align 4
  switch i32 %tmp398, label %sw.default690 [
    i32 9, label %if.end683.sw.bb684_crit_edge
    i32 10, label %if.end683.sw.bb684_crit_edge1012
    i32 7, label %if.end683.sw.bb686_crit_edge
    i32 8, label %if.end683.sw.bb686_crit_edge1013
    i32 14, label %if.end683.sw.bb686_crit_edge1014
    i32 16, label %if.end683.sw.bb686_crit_edge1015
    i32 12, label %sw.bb688
  ]

if.end683.sw.bb686_crit_edge1015:                 ; preds = %if.end683
  br label %sw.bb686

if.end683.sw.bb686_crit_edge1014:                 ; preds = %if.end683
  br label %sw.bb686

if.end683.sw.bb686_crit_edge1013:                 ; preds = %if.end683
  br label %sw.bb686

if.end683.sw.bb686_crit_edge:                     ; preds = %if.end683
  br label %sw.bb686

if.end683.sw.bb684_crit_edge1012:                 ; preds = %if.end683
  br label %sw.bb684

if.end683.sw.bb684_crit_edge:                     ; preds = %if.end683
  br label %sw.bb684

sw.bb684:                                         ; preds = %if.end683.sw.bb684_crit_edge1012, %if.end683.sw.bb684_crit_edge
  %tmp399 = load i8*, i8** %fbp, align 8
  %incdec.ptr685 = getelementptr inbounds i8, i8* %tmp399, i32 1
  store i8* %incdec.ptr685, i8** %fbp, align 8
  store i8 108, i8* %tmp399, align 1
  br label %sw.bb686

sw.bb686:                                         ; preds = %if.end683.sw.bb686_crit_edge1015, %if.end683.sw.bb686_crit_edge1014, %if.end683.sw.bb686_crit_edge1013, %if.end683.sw.bb686_crit_edge, %sw.bb684
  %tmp401 = load i8*, i8** %fbp, align 8
  %incdec.ptr687 = getelementptr inbounds i8, i8* %tmp401, i32 1
  store i8* %incdec.ptr687, i8** %fbp, align 8
  store i8 108, i8* %tmp401, align 1
  br label %sw.epilog691

sw.bb688:                                         ; preds = %if.end683
  %tmp402 = load i8*, i8** %fbp, align 8
  %incdec.ptr689 = getelementptr inbounds i8, i8* %tmp402, i32 1
  store i8* %incdec.ptr689, i8** %fbp, align 8
  store i8 76, i8* %tmp402, align 1
  br label %sw.epilog691

sw.default690:                                    ; preds = %if.end683
  br label %sw.epilog691

sw.epilog691:                                     ; preds = %sw.default690, %sw.bb688, %sw.bb686
  %tmp403 = load %struct.char_directive*, %struct.char_directive** %dp, align 8
  %conversion692 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %tmp403, i32 0, i32 9
  %tmp404 = load i8, i8* %conversion692, align 1
  %tmp405 = load i8*, i8** %fbp, align 8
  store i8 %tmp404, i8* %tmp405, align 1
  %tmp406 = load i8*, i8** %fbp, align 8
  %arrayidx693 = getelementptr inbounds i8, i8* %tmp406, i64 1
  store i8 0, i8* %arrayidx693, align 1
  store i32 0, i32* %prefix_count, align 4
  %tmp407 = load %struct.char_directive*, %struct.char_directive** %dp, align 8
  %width_arg_index694 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %tmp407, i32 0, i32 5
  %tmp408 = load i64, i64* %width_arg_index694, align 8
  %cmp695 = icmp ne i64 %tmp408, -1
  br i1 %cmp695, label %if.then697, label %sw.epilog691.if.end712_crit_edge

sw.epilog691.if.end712_crit_edge:                 ; preds = %sw.epilog691
  br label %if.end712

if.then697:                                       ; preds = %sw.epilog691
  %tmp409 = load %struct.char_directive*, %struct.char_directive** %dp, align 8
  %width_arg_index698 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %tmp409, i32 0, i32 5
  %tmp410 = load i64, i64* %width_arg_index698, align 8
  %arg699 = getelementptr inbounds %struct.arguments, %struct.arguments* %a, i32 0, i32 1
  %tmp411 = load %struct.argument*, %struct.argument** %arg699, align 8
  %arrayidx700 = getelementptr inbounds %struct.argument, %struct.argument* %tmp411, i64 %tmp410
  %type701 = getelementptr inbounds %struct.argument, %struct.argument* %arrayidx700, i32 0, i32 0
  %tmp412 = load i32, i32* %type701, align 4
  %cmp702 = icmp eq i32 %tmp412, 5
  br i1 %cmp702, label %if.end705, label %if.then704

if.then704:                                       ; preds = %if.then697
  call void @abort() #12
  unreachable

if.end705:                                        ; preds = %if.then697
  %tmp413 = load %struct.char_directive*, %struct.char_directive** %dp, align 8
  %width_arg_index706 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %tmp413, i32 0, i32 5
  %tmp414 = load i64, i64* %width_arg_index706, align 8
  %arg707 = getelementptr inbounds %struct.arguments, %struct.arguments* %a, i32 0, i32 1
  %tmp415 = load %struct.argument*, %struct.argument** %arg707, align 8
  %arrayidx708 = getelementptr inbounds %struct.argument, %struct.argument* %tmp415, i64 %tmp414
  %a709 = getelementptr inbounds %struct.argument, %struct.argument* %arrayidx708, i32 0, i32 1
  %a_int710 = bitcast %union.anon.17* %a709 to i32*
  %tmp416 = load i32, i32* %a_int710, align 4
  %tmp417 = load i32, i32* %prefix_count, align 4
  %inc = add i32 %tmp417, 1
  store i32 %inc, i32* %prefix_count, align 4
  %idxprom = zext i32 %tmp417 to i64
  %arrayidx711 = getelementptr inbounds [2 x i32], [2 x i32]* %prefixes, i32 0, i64 %idxprom
  store i32 %tmp416, i32* %arrayidx711, align 4
  br label %if.end712

if.end712:                                        ; preds = %sw.epilog691.if.end712_crit_edge, %if.end705
  %tmp418 = load %struct.char_directive*, %struct.char_directive** %dp, align 8
  %precision_arg_index713 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %tmp418, i32 0, i32 8
  %tmp419 = load i64, i64* %precision_arg_index713, align 8
  %cmp714 = icmp ne i64 %tmp419, -1
  br i1 %cmp714, label %if.then716, label %if.end712.if.end733_crit_edge

if.end712.if.end733_crit_edge:                    ; preds = %if.end712
  br label %if.end733

if.then716:                                       ; preds = %if.end712
  %tmp420 = load %struct.char_directive*, %struct.char_directive** %dp, align 8
  %precision_arg_index717 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %tmp420, i32 0, i32 8
  %tmp421 = load i64, i64* %precision_arg_index717, align 8
  %arg718 = getelementptr inbounds %struct.arguments, %struct.arguments* %a, i32 0, i32 1
  %tmp422 = load %struct.argument*, %struct.argument** %arg718, align 8
  %arrayidx719 = getelementptr inbounds %struct.argument, %struct.argument* %tmp422, i64 %tmp421
  %type720 = getelementptr inbounds %struct.argument, %struct.argument* %arrayidx719, i32 0, i32 0
  %tmp423 = load i32, i32* %type720, align 4
  %cmp721 = icmp eq i32 %tmp423, 5
  br i1 %cmp721, label %if.end724, label %if.then723

if.then723:                                       ; preds = %if.then716
  call void @abort() #12
  unreachable

if.end724:                                        ; preds = %if.then716
  %tmp424 = load %struct.char_directive*, %struct.char_directive** %dp, align 8
  %precision_arg_index725 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %tmp424, i32 0, i32 8
  %tmp425 = load i64, i64* %precision_arg_index725, align 8
  %arg726 = getelementptr inbounds %struct.arguments, %struct.arguments* %a, i32 0, i32 1
  %tmp426 = load %struct.argument*, %struct.argument** %arg726, align 8
  %arrayidx727 = getelementptr inbounds %struct.argument, %struct.argument* %tmp426, i64 %tmp425
  %a728 = getelementptr inbounds %struct.argument, %struct.argument* %arrayidx727, i32 0, i32 1
  %a_int729 = bitcast %union.anon.17* %a728 to i32*
  %tmp427 = load i32, i32* %a_int729, align 4
  %tmp428 = load i32, i32* %prefix_count, align 4
  %inc730 = add i32 %tmp428, 1
  store i32 %inc730, i32* %prefix_count, align 4
  %idxprom731 = zext i32 %tmp428 to i64
  %arrayidx732 = getelementptr inbounds [2 x i32], [2 x i32]* %prefixes, i32 0, i64 %idxprom731
  store i32 %tmp427, i32* %arrayidx732, align 4
  br label %if.end733

if.end733:                                        ; preds = %if.end712.if.end733_crit_edge, %if.end724
  %tmp429 = load i64, i64* %length, align 8
  %call734 = call i64 @xsum(i64 %tmp429, i64 2) #13
  %tmp430 = load i64, i64* %allocated, align 8
  %cmp735 = icmp ugt i64 %call734, %tmp430
  br i1 %cmp735, label %if.then737, label %if.end733.if.end793_crit_edge

if.end733.if.end793_crit_edge:                    ; preds = %if.end733
  br label %if.end793

if.then737:                                       ; preds = %if.end733
  %tmp431 = load i64, i64* %allocated, align 8
  %cmp742 = icmp ugt i64 %tmp431, 0
  br i1 %cmp742, label %cond.true744, label %cond.false752

cond.true744:                                     ; preds = %if.then737
  %tmp432 = load i64, i64* %allocated, align 8
  %cmp745 = icmp ule i64 %tmp432, 9223372036854775807
  br i1 %cmp745, label %cond.true747, label %cond.false749

cond.true747:                                     ; preds = %cond.true744
  %tmp433 = load i64, i64* %allocated, align 8
  %mul748 = mul i64 %tmp433, 2
  store i64 %mul748, i64* %mul748.reg2mem
  %mul748.reload = load i64, i64* %mul748.reg2mem
  store i64 %mul748.reload, i64* %cond751.reg2mem1022
  br label %cond.end750

cond.false749:                                    ; preds = %cond.true744
  store i64 -1, i64* %cond751.reg2mem1022
  br label %cond.end750

cond.end750:                                      ; preds = %cond.false749, %cond.true747
  %cond751.reload1023 = load i64, i64* %cond751.reg2mem1022
  store i64 %cond751.reload1023, i64* %cond751.reg2mem
  %cond751.reload = load i64, i64* %cond751.reg2mem
  store i64 %cond751.reload, i64* %cond754.reg2mem
  br label %cond.end753

cond.false752:                                    ; preds = %if.then737
  store i64 12, i64* %cond754.reg2mem
  br label %cond.end753

cond.end753:                                      ; preds = %cond.false752, %cond.end750
  %cond754.reload = load i64, i64* %cond754.reg2mem
  store i64 %cond754.reload, i64* %allocated, align 8
  %tmp434 = load i64, i64* %length, align 8
  %call755 = call i64 @xsum(i64 %tmp434, i64 2) #13
  %tmp435 = load i64, i64* %allocated, align 8
  %cmp756 = icmp ugt i64 %call755, %tmp435
  br i1 %cmp756, label %if.then758, label %cond.end753.if.end760_crit_edge

cond.end753.if.end760_crit_edge:                  ; preds = %cond.end753
  br label %if.end760

if.then758:                                       ; preds = %cond.end753
  %tmp436 = load i64, i64* %length, align 8
  %call759 = call i64 @xsum(i64 %tmp436, i64 2) #13
  store i64 %call759, i64* %allocated, align 8
  br label %if.end760

if.end760:                                        ; preds = %cond.end753.if.end760_crit_edge, %if.then758
  %tmp437 = load i64, i64* %allocated, align 8
  %cmp761 = icmp ule i64 %tmp437, -1
  br i1 %cmp761, label %cond.true763, label %cond.false765

cond.true763:                                     ; preds = %if.end760
  %tmp438 = load i64, i64* %allocated, align 8
  %mul764 = mul i64 %tmp438, 1
  store i64 %mul764, i64* %mul764.reg2mem
  %mul764.reload = load i64, i64* %mul764.reg2mem
  store i64 %mul764.reload, i64* %cond767.reg2mem
  br label %cond.end766

cond.false765:                                    ; preds = %if.end760
  store i64 -1, i64* %cond767.reg2mem
  br label %cond.end766

cond.end766:                                      ; preds = %cond.false765, %cond.true763
  %cond767.reload = load i64, i64* %cond767.reg2mem
  store i64 %cond767.reload, i64* %memory_size739, align 8
  %tmp439 = load i64, i64* %memory_size739, align 8
  %cmp768 = icmp eq i64 %tmp439, -1
  br i1 %cmp768, label %if.then770, label %if.end771

if.then770:                                       ; preds = %cond.end766
  br label %out_of_memory

if.end771:                                        ; preds = %cond.end766
  %tmp440 = load i8*, i8** %result, align 8
  %tmp441 = load i8*, i8** %resultbuf.addr, align 8
  %cmp772 = icmp eq i8* %tmp440, %tmp441
  br i1 %cmp772, label %if.end771.if.then777_crit_edge, label %lor.lhs.false774

if.end771.if.then777_crit_edge:                   ; preds = %if.end771
  br label %if.then777

lor.lhs.false774:                                 ; preds = %if.end771
  %tmp442 = load i8*, i8** %result, align 8
  %cmp775 = icmp eq i8* %tmp442, null
  br i1 %cmp775, label %lor.lhs.false774.if.then777_crit_edge, label %if.else779

lor.lhs.false774.if.then777_crit_edge:            ; preds = %lor.lhs.false774
  br label %if.then777

if.then777:                                       ; preds = %lor.lhs.false774.if.then777_crit_edge, %if.end771.if.then777_crit_edge
  %tmp443 = load i64, i64* %memory_size739, align 8
  %call778 = call noalias i8* @malloc(i64 %tmp443) #8
  store i8* %call778, i8** %memory741, align 8
  br label %if.end781

if.else779:                                       ; preds = %lor.lhs.false774
  %tmp444 = load i8*, i8** %result, align 8
  %tmp445 = load i64, i64* %memory_size739, align 8
  %call780 = call i8* @realloc(i8* %tmp444, i64 %tmp445) #8
  store i8* %call780, i8** %memory741, align 8
  br label %if.end781

if.end781:                                        ; preds = %if.else779, %if.then777
  %tmp446 = load i8*, i8** %memory741, align 8
  %cmp782 = icmp eq i8* %tmp446, null
  br i1 %cmp782, label %if.then784, label %if.end785

if.then784:                                       ; preds = %if.end781
  br label %out_of_memory

if.end785:                                        ; preds = %if.end781
  %tmp447 = load i8*, i8** %result, align 8
  %tmp448 = load i8*, i8** %resultbuf.addr, align 8
  %cmp786 = icmp eq i8* %tmp447, %tmp448
  br i1 %cmp786, label %land.lhs.true788, label %if.end785.if.end792_crit_edge

if.end785.if.end792_crit_edge:                    ; preds = %if.end785
  br label %if.end792

land.lhs.true788:                                 ; preds = %if.end785
  %tmp449 = load i64, i64* %length, align 8
  %cmp789 = icmp ugt i64 %tmp449, 0
  br i1 %cmp789, label %if.then791, label %land.lhs.true788.if.end792_crit_edge

land.lhs.true788.if.end792_crit_edge:             ; preds = %land.lhs.true788
  br label %if.end792

if.then791:                                       ; preds = %land.lhs.true788
  %tmp450 = load i8*, i8** %memory741, align 8
  %tmp451 = load i8*, i8** %result, align 8
  %tmp452 = load i64, i64* %length, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %tmp450, i8* %tmp451, i64 %tmp452, i32 1, i1 false)
  br label %if.end792

if.end792:                                        ; preds = %land.lhs.true788.if.end792_crit_edge, %if.end785.if.end792_crit_edge, %if.then791
  %tmp453 = load i8*, i8** %memory741, align 8
  store i8* %tmp453, i8** %result, align 8
  br label %if.end793

if.end793:                                        ; preds = %if.end733.if.end793_crit_edge, %if.end792
  %tmp454 = load i8*, i8** %result, align 8
  %tmp455 = load i64, i64* %length, align 8
  %add.ptr794 = getelementptr inbounds i8, i8* %tmp454, i64 %tmp455
  store i8 0, i8* %add.ptr794, align 1
  br label %for.cond795

for.cond795:                                      ; preds = %for.cond795.backedge, %if.end793
  store i32 -1, i32* %count797, align 4
  store i32 0, i32* %retcount, align 4
  %tmp456 = load i64, i64* %allocated, align 8
  %tmp457 = load i64, i64* %length, align 8
  %sub800 = sub i64 %tmp456, %tmp457
  store i64 %sub800, i64* %maxlen, align 8
  %tmp458 = load i64, i64* %maxlen, align 8
  %cmp801 = icmp ugt i64 %tmp458, 2147483647
  br i1 %cmp801, label %if.then803, label %for.cond795.if.end804_crit_edge

for.cond795.if.end804_crit_edge:                  ; preds = %for.cond795
  br label %if.end804

if.then803:                                       ; preds = %for.cond795
  store i64 2147483647, i64* %maxlen, align 8
  br label %if.end804

if.end804:                                        ; preds = %for.cond795.if.end804_crit_edge, %if.then803
  %tmp459 = load i64, i64* %maxlen, align 8
  %mul805 = mul i64 %tmp459, 1
  store i64 %mul805, i64* %maxlen, align 8
  %tmp460 = load i32, i32* %type610, align 4
  switch i32 %tmp460, label %sw.default1169 [
    i32 1, label %sw.bb806
    i32 2, label %sw.bb828
    i32 3, label %sw.bb850
    i32 4, label %sw.bb872
    i32 5, label %sw.bb894
    i32 6, label %sw.bb916
    i32 7, label %sw.bb937
    i32 8, label %sw.bb958
    i32 9, label %sw.bb979
    i32 10, label %sw.bb1000
    i32 11, label %sw.bb1021
    i32 12, label %sw.bb1042
    i32 13, label %sw.bb1064
    i32 14, label %sw.bb1085
    i32 15, label %sw.bb1106
    i32 16, label %sw.bb1127
    i32 17, label %sw.bb1148
  ]

sw.bb806:                                         ; preds = %if.end804
  %tmp461 = load %struct.char_directive*, %struct.char_directive** %dp, align 8
  %arg_index809 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %tmp461, i32 0, i32 10
  %tmp462 = load i64, i64* %arg_index809, align 8
  %arg810 = getelementptr inbounds %struct.arguments, %struct.arguments* %a, i32 0, i32 1
  %tmp463 = load %struct.argument*, %struct.argument** %arg810, align 8
  %arrayidx811 = getelementptr inbounds %struct.argument, %struct.argument* %tmp463, i64 %tmp462
  %a812 = getelementptr inbounds %struct.argument, %struct.argument* %arrayidx811, i32 0, i32 1
  %a_schar = bitcast %union.anon.17* %a812 to i8*
  %tmp464 = load i8, i8* %a_schar, align 1
  %conv813 = sext i8 %tmp464 to i32
  store i32 %conv813, i32* %arg808, align 4
  %tmp465 = load i32, i32* %prefix_count, align 4
  switch i32 %tmp465, label %sw.default826 [
    i32 0, label %sw.bb814
    i32 1, label %sw.bb817
    i32 2, label %sw.bb821
  ]

sw.bb814:                                         ; preds = %sw.bb806
  %tmp466 = load i8*, i8** %result, align 8
  %tmp467 = load i64, i64* %length, align 8
  %add.ptr815 = getelementptr inbounds i8, i8* %tmp466, i64 %tmp467
  %tmp468 = load i64, i64* %maxlen, align 8
  %tmp469 = load i8*, i8** %buf, align 8
  %tmp470 = load i32, i32* %arg808, align 4
  %call816 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %add.ptr815, i64 %tmp468, i8* %tmp469, i32 %tmp470, i32* %count797) #8
  store i32 %call816, i32* %retcount, align 4
  br label %sw.epilog827

sw.bb817:                                         ; preds = %sw.bb806
  %tmp471 = load i8*, i8** %result, align 8
  %tmp472 = load i64, i64* %length, align 8
  %add.ptr818 = getelementptr inbounds i8, i8* %tmp471, i64 %tmp472
  %tmp473 = load i64, i64* %maxlen, align 8
  %tmp474 = load i8*, i8** %buf, align 8
  %arrayidx819 = getelementptr inbounds [2 x i32], [2 x i32]* %prefixes, i32 0, i64 0
  %tmp475 = load i32, i32* %arrayidx819, align 4
  %tmp476 = load i32, i32* %arg808, align 4
  %call820 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %add.ptr818, i64 %tmp473, i8* %tmp474, i32 %tmp475, i32 %tmp476, i32* %count797) #8
  store i32 %call820, i32* %retcount, align 4
  br label %sw.epilog827

sw.bb821:                                         ; preds = %sw.bb806
  %tmp477 = load i8*, i8** %result, align 8
  %tmp478 = load i64, i64* %length, align 8
  %add.ptr822 = getelementptr inbounds i8, i8* %tmp477, i64 %tmp478
  %tmp479 = load i64, i64* %maxlen, align 8
  %tmp480 = load i8*, i8** %buf, align 8
  %arrayidx823 = getelementptr inbounds [2 x i32], [2 x i32]* %prefixes, i32 0, i64 0
  %tmp481 = load i32, i32* %arrayidx823, align 4
  %arrayidx824 = getelementptr inbounds [2 x i32], [2 x i32]* %prefixes, i32 0, i64 1
  %tmp482 = load i32, i32* %arrayidx824, align 4
  %tmp483 = load i32, i32* %arg808, align 4
  %call825 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %add.ptr822, i64 %tmp479, i8* %tmp480, i32 %tmp481, i32 %tmp482, i32 %tmp483, i32* %count797) #8
  store i32 %call825, i32* %retcount, align 4
  br label %sw.epilog827

sw.default826:                                    ; preds = %sw.bb806
  call void @abort() #12
  unreachable

sw.epilog827:                                     ; preds = %sw.bb821, %sw.bb817, %sw.bb814
  br label %sw.epilog1170

sw.bb828:                                         ; preds = %if.end804
  %tmp484 = load %struct.char_directive*, %struct.char_directive** %dp, align 8
  %arg_index831 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %tmp484, i32 0, i32 10
  %tmp485 = load i64, i64* %arg_index831, align 8
  %arg832 = getelementptr inbounds %struct.arguments, %struct.arguments* %a, i32 0, i32 1
  %tmp486 = load %struct.argument*, %struct.argument** %arg832, align 8
  %arrayidx833 = getelementptr inbounds %struct.argument, %struct.argument* %tmp486, i64 %tmp485
  %a834 = getelementptr inbounds %struct.argument, %struct.argument* %arrayidx833, i32 0, i32 1
  %a_uchar = bitcast %union.anon.17* %a834 to i8*
  %tmp487 = load i8, i8* %a_uchar, align 1
  %conv835 = zext i8 %tmp487 to i32
  store i32 %conv835, i32* %arg830, align 4
  %tmp488 = load i32, i32* %prefix_count, align 4
  switch i32 %tmp488, label %sw.default848 [
    i32 0, label %sw.bb836
    i32 1, label %sw.bb839
    i32 2, label %sw.bb843
  ]

sw.bb836:                                         ; preds = %sw.bb828
  %tmp489 = load i8*, i8** %result, align 8
  %tmp490 = load i64, i64* %length, align 8
  %add.ptr837 = getelementptr inbounds i8, i8* %tmp489, i64 %tmp490
  %tmp491 = load i64, i64* %maxlen, align 8
  %tmp492 = load i8*, i8** %buf, align 8
  %tmp493 = load i32, i32* %arg830, align 4
  %call838 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %add.ptr837, i64 %tmp491, i8* %tmp492, i32 %tmp493, i32* %count797) #8
  store i32 %call838, i32* %retcount, align 4
  br label %sw.epilog849

sw.bb839:                                         ; preds = %sw.bb828
  %tmp494 = load i8*, i8** %result, align 8
  %tmp495 = load i64, i64* %length, align 8
  %add.ptr840 = getelementptr inbounds i8, i8* %tmp494, i64 %tmp495
  %tmp496 = load i64, i64* %maxlen, align 8
  %tmp497 = load i8*, i8** %buf, align 8
  %arrayidx841 = getelementptr inbounds [2 x i32], [2 x i32]* %prefixes, i32 0, i64 0
  %tmp498 = load i32, i32* %arrayidx841, align 4
  %tmp499 = load i32, i32* %arg830, align 4
  %call842 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %add.ptr840, i64 %tmp496, i8* %tmp497, i32 %tmp498, i32 %tmp499, i32* %count797) #8
  store i32 %call842, i32* %retcount, align 4
  br label %sw.epilog849

sw.bb843:                                         ; preds = %sw.bb828
  %tmp500 = load i8*, i8** %result, align 8
  %tmp501 = load i64, i64* %length, align 8
  %add.ptr844 = getelementptr inbounds i8, i8* %tmp500, i64 %tmp501
  %tmp502 = load i64, i64* %maxlen, align 8
  %tmp503 = load i8*, i8** %buf, align 8
  %arrayidx845 = getelementptr inbounds [2 x i32], [2 x i32]* %prefixes, i32 0, i64 0
  %tmp504 = load i32, i32* %arrayidx845, align 4
  %arrayidx846 = getelementptr inbounds [2 x i32], [2 x i32]* %prefixes, i32 0, i64 1
  %tmp505 = load i32, i32* %arrayidx846, align 4
  %tmp506 = load i32, i32* %arg830, align 4
  %call847 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %add.ptr844, i64 %tmp502, i8* %tmp503, i32 %tmp504, i32 %tmp505, i32 %tmp506, i32* %count797) #8
  store i32 %call847, i32* %retcount, align 4
  br label %sw.epilog849

sw.default848:                                    ; preds = %sw.bb828
  call void @abort() #12
  unreachable

sw.epilog849:                                     ; preds = %sw.bb843, %sw.bb839, %sw.bb836
  br label %sw.epilog1170

sw.bb850:                                         ; preds = %if.end804
  %tmp507 = load %struct.char_directive*, %struct.char_directive** %dp, align 8
  %arg_index853 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %tmp507, i32 0, i32 10
  %tmp508 = load i64, i64* %arg_index853, align 8
  %arg854 = getelementptr inbounds %struct.arguments, %struct.arguments* %a, i32 0, i32 1
  %tmp509 = load %struct.argument*, %struct.argument** %arg854, align 8
  %arrayidx855 = getelementptr inbounds %struct.argument, %struct.argument* %tmp509, i64 %tmp508
  %a856 = getelementptr inbounds %struct.argument, %struct.argument* %arrayidx855, i32 0, i32 1
  %a_short = bitcast %union.anon.17* %a856 to i16*
  %tmp510 = load i16, i16* %a_short, align 2
  %conv857 = sext i16 %tmp510 to i32
  store i32 %conv857, i32* %arg852, align 4
  %tmp511 = load i32, i32* %prefix_count, align 4
  switch i32 %tmp511, label %sw.default870 [
    i32 0, label %sw.bb858
    i32 1, label %sw.bb861
    i32 2, label %sw.bb865
  ]

sw.bb858:                                         ; preds = %sw.bb850
  %tmp512 = load i8*, i8** %result, align 8
  %tmp513 = load i64, i64* %length, align 8
  %add.ptr859 = getelementptr inbounds i8, i8* %tmp512, i64 %tmp513
  %tmp514 = load i64, i64* %maxlen, align 8
  %tmp515 = load i8*, i8** %buf, align 8
  %tmp516 = load i32, i32* %arg852, align 4
  %call860 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %add.ptr859, i64 %tmp514, i8* %tmp515, i32 %tmp516, i32* %count797) #8
  store i32 %call860, i32* %retcount, align 4
  br label %sw.epilog871

sw.bb861:                                         ; preds = %sw.bb850
  %tmp517 = load i8*, i8** %result, align 8
  %tmp518 = load i64, i64* %length, align 8
  %add.ptr862 = getelementptr inbounds i8, i8* %tmp517, i64 %tmp518
  %tmp519 = load i64, i64* %maxlen, align 8
  %tmp520 = load i8*, i8** %buf, align 8
  %arrayidx863 = getelementptr inbounds [2 x i32], [2 x i32]* %prefixes, i32 0, i64 0
  %tmp521 = load i32, i32* %arrayidx863, align 4
  %tmp522 = load i32, i32* %arg852, align 4
  %call864 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %add.ptr862, i64 %tmp519, i8* %tmp520, i32 %tmp521, i32 %tmp522, i32* %count797) #8
  store i32 %call864, i32* %retcount, align 4
  br label %sw.epilog871

sw.bb865:                                         ; preds = %sw.bb850
  %tmp523 = load i8*, i8** %result, align 8
  %tmp524 = load i64, i64* %length, align 8
  %add.ptr866 = getelementptr inbounds i8, i8* %tmp523, i64 %tmp524
  %tmp525 = load i64, i64* %maxlen, align 8
  %tmp526 = load i8*, i8** %buf, align 8
  %arrayidx867 = getelementptr inbounds [2 x i32], [2 x i32]* %prefixes, i32 0, i64 0
  %tmp527 = load i32, i32* %arrayidx867, align 4
  %arrayidx868 = getelementptr inbounds [2 x i32], [2 x i32]* %prefixes, i32 0, i64 1
  %tmp528 = load i32, i32* %arrayidx868, align 4
  %tmp529 = load i32, i32* %arg852, align 4
  %call869 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %add.ptr866, i64 %tmp525, i8* %tmp526, i32 %tmp527, i32 %tmp528, i32 %tmp529, i32* %count797) #8
  store i32 %call869, i32* %retcount, align 4
  br label %sw.epilog871

sw.default870:                                    ; preds = %sw.bb850
  call void @abort() #12
  unreachable

sw.epilog871:                                     ; preds = %sw.bb865, %sw.bb861, %sw.bb858
  br label %sw.epilog1170

sw.bb872:                                         ; preds = %if.end804
  %tmp530 = load %struct.char_directive*, %struct.char_directive** %dp, align 8
  %arg_index875 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %tmp530, i32 0, i32 10
  %tmp531 = load i64, i64* %arg_index875, align 8
  %arg876 = getelementptr inbounds %struct.arguments, %struct.arguments* %a, i32 0, i32 1
  %tmp532 = load %struct.argument*, %struct.argument** %arg876, align 8
  %arrayidx877 = getelementptr inbounds %struct.argument, %struct.argument* %tmp532, i64 %tmp531
  %a878 = getelementptr inbounds %struct.argument, %struct.argument* %arrayidx877, i32 0, i32 1
  %a_ushort = bitcast %union.anon.17* %a878 to i16*
  %tmp533 = load i16, i16* %a_ushort, align 2
  %conv879 = zext i16 %tmp533 to i32
  store i32 %conv879, i32* %arg874, align 4
  %tmp534 = load i32, i32* %prefix_count, align 4
  switch i32 %tmp534, label %sw.default892 [
    i32 0, label %sw.bb880
    i32 1, label %sw.bb883
    i32 2, label %sw.bb887
  ]

sw.bb880:                                         ; preds = %sw.bb872
  %tmp535 = load i8*, i8** %result, align 8
  %tmp536 = load i64, i64* %length, align 8
  %add.ptr881 = getelementptr inbounds i8, i8* %tmp535, i64 %tmp536
  %tmp537 = load i64, i64* %maxlen, align 8
  %tmp538 = load i8*, i8** %buf, align 8
  %tmp539 = load i32, i32* %arg874, align 4
  %call882 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %add.ptr881, i64 %tmp537, i8* %tmp538, i32 %tmp539, i32* %count797) #8
  store i32 %call882, i32* %retcount, align 4
  br label %sw.epilog893

sw.bb883:                                         ; preds = %sw.bb872
  %tmp540 = load i8*, i8** %result, align 8
  %tmp541 = load i64, i64* %length, align 8
  %add.ptr884 = getelementptr inbounds i8, i8* %tmp540, i64 %tmp541
  %tmp542 = load i64, i64* %maxlen, align 8
  %tmp543 = load i8*, i8** %buf, align 8
  %arrayidx885 = getelementptr inbounds [2 x i32], [2 x i32]* %prefixes, i32 0, i64 0
  %tmp544 = load i32, i32* %arrayidx885, align 4
  %tmp545 = load i32, i32* %arg874, align 4
  %call886 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %add.ptr884, i64 %tmp542, i8* %tmp543, i32 %tmp544, i32 %tmp545, i32* %count797) #8
  store i32 %call886, i32* %retcount, align 4
  br label %sw.epilog893

sw.bb887:                                         ; preds = %sw.bb872
  %tmp546 = load i8*, i8** %result, align 8
  %tmp547 = load i64, i64* %length, align 8
  %add.ptr888 = getelementptr inbounds i8, i8* %tmp546, i64 %tmp547
  %tmp548 = load i64, i64* %maxlen, align 8
  %tmp549 = load i8*, i8** %buf, align 8
  %arrayidx889 = getelementptr inbounds [2 x i32], [2 x i32]* %prefixes, i32 0, i64 0
  %tmp550 = load i32, i32* %arrayidx889, align 4
  %arrayidx890 = getelementptr inbounds [2 x i32], [2 x i32]* %prefixes, i32 0, i64 1
  %tmp551 = load i32, i32* %arrayidx890, align 4
  %tmp552 = load i32, i32* %arg874, align 4
  %call891 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %add.ptr888, i64 %tmp548, i8* %tmp549, i32 %tmp550, i32 %tmp551, i32 %tmp552, i32* %count797) #8
  store i32 %call891, i32* %retcount, align 4
  br label %sw.epilog893

sw.default892:                                    ; preds = %sw.bb872
  call void @abort() #12
  unreachable

sw.epilog893:                                     ; preds = %sw.bb887, %sw.bb883, %sw.bb880
  br label %sw.epilog1170

sw.bb894:                                         ; preds = %if.end804
  %tmp553 = load %struct.char_directive*, %struct.char_directive** %dp, align 8
  %arg_index897 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %tmp553, i32 0, i32 10
  %tmp554 = load i64, i64* %arg_index897, align 8
  %arg898 = getelementptr inbounds %struct.arguments, %struct.arguments* %a, i32 0, i32 1
  %tmp555 = load %struct.argument*, %struct.argument** %arg898, align 8
  %arrayidx899 = getelementptr inbounds %struct.argument, %struct.argument* %tmp555, i64 %tmp554
  %a900 = getelementptr inbounds %struct.argument, %struct.argument* %arrayidx899, i32 0, i32 1
  %a_int901 = bitcast %union.anon.17* %a900 to i32*
  %tmp556 = load i32, i32* %a_int901, align 4
  store i32 %tmp556, i32* %arg896, align 4
  %tmp557 = load i32, i32* %prefix_count, align 4
  switch i32 %tmp557, label %sw.default914 [
    i32 0, label %sw.bb902
    i32 1, label %sw.bb905
    i32 2, label %sw.bb909
  ]

sw.bb902:                                         ; preds = %sw.bb894
  %tmp558 = load i8*, i8** %result, align 8
  %tmp559 = load i64, i64* %length, align 8
  %add.ptr903 = getelementptr inbounds i8, i8* %tmp558, i64 %tmp559
  %tmp560 = load i64, i64* %maxlen, align 8
  %tmp561 = load i8*, i8** %buf, align 8
  %tmp562 = load i32, i32* %arg896, align 4
  %call904 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %add.ptr903, i64 %tmp560, i8* %tmp561, i32 %tmp562, i32* %count797) #8
  store i32 %call904, i32* %retcount, align 4
  br label %sw.epilog915

sw.bb905:                                         ; preds = %sw.bb894
  %tmp563 = load i8*, i8** %result, align 8
  %tmp564 = load i64, i64* %length, align 8
  %add.ptr906 = getelementptr inbounds i8, i8* %tmp563, i64 %tmp564
  %tmp565 = load i64, i64* %maxlen, align 8
  %tmp566 = load i8*, i8** %buf, align 8
  %arrayidx907 = getelementptr inbounds [2 x i32], [2 x i32]* %prefixes, i32 0, i64 0
  %tmp567 = load i32, i32* %arrayidx907, align 4
  %tmp568 = load i32, i32* %arg896, align 4
  %call908 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %add.ptr906, i64 %tmp565, i8* %tmp566, i32 %tmp567, i32 %tmp568, i32* %count797) #8
  store i32 %call908, i32* %retcount, align 4
  br label %sw.epilog915

sw.bb909:                                         ; preds = %sw.bb894
  %tmp569 = load i8*, i8** %result, align 8
  %tmp570 = load i64, i64* %length, align 8
  %add.ptr910 = getelementptr inbounds i8, i8* %tmp569, i64 %tmp570
  %tmp571 = load i64, i64* %maxlen, align 8
  %tmp572 = load i8*, i8** %buf, align 8
  %arrayidx911 = getelementptr inbounds [2 x i32], [2 x i32]* %prefixes, i32 0, i64 0
  %tmp573 = load i32, i32* %arrayidx911, align 4
  %arrayidx912 = getelementptr inbounds [2 x i32], [2 x i32]* %prefixes, i32 0, i64 1
  %tmp574 = load i32, i32* %arrayidx912, align 4
  %tmp575 = load i32, i32* %arg896, align 4
  %call913 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %add.ptr910, i64 %tmp571, i8* %tmp572, i32 %tmp573, i32 %tmp574, i32 %tmp575, i32* %count797) #8
  store i32 %call913, i32* %retcount, align 4
  br label %sw.epilog915

sw.default914:                                    ; preds = %sw.bb894
  call void @abort() #12
  unreachable

sw.epilog915:                                     ; preds = %sw.bb909, %sw.bb905, %sw.bb902
  br label %sw.epilog1170

sw.bb916:                                         ; preds = %if.end804
  %tmp576 = load %struct.char_directive*, %struct.char_directive** %dp, align 8
  %arg_index919 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %tmp576, i32 0, i32 10
  %tmp577 = load i64, i64* %arg_index919, align 8
  %arg920 = getelementptr inbounds %struct.arguments, %struct.arguments* %a, i32 0, i32 1
  %tmp578 = load %struct.argument*, %struct.argument** %arg920, align 8
  %arrayidx921 = getelementptr inbounds %struct.argument, %struct.argument* %tmp578, i64 %tmp577
  %a922 = getelementptr inbounds %struct.argument, %struct.argument* %arrayidx921, i32 0, i32 1
  %a_uint = bitcast %union.anon.17* %a922 to i32*
  %tmp579 = load i32, i32* %a_uint, align 4
  store i32 %tmp579, i32* %arg918, align 4
  %tmp580 = load i32, i32* %prefix_count, align 4
  switch i32 %tmp580, label %sw.default935 [
    i32 0, label %sw.bb923
    i32 1, label %sw.bb926
    i32 2, label %sw.bb930
  ]

sw.bb923:                                         ; preds = %sw.bb916
  %tmp581 = load i8*, i8** %result, align 8
  %tmp582 = load i64, i64* %length, align 8
  %add.ptr924 = getelementptr inbounds i8, i8* %tmp581, i64 %tmp582
  %tmp583 = load i64, i64* %maxlen, align 8
  %tmp584 = load i8*, i8** %buf, align 8
  %tmp585 = load i32, i32* %arg918, align 4
  %call925 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %add.ptr924, i64 %tmp583, i8* %tmp584, i32 %tmp585, i32* %count797) #8
  store i32 %call925, i32* %retcount, align 4
  br label %sw.epilog936

sw.bb926:                                         ; preds = %sw.bb916
  %tmp586 = load i8*, i8** %result, align 8
  %tmp587 = load i64, i64* %length, align 8
  %add.ptr927 = getelementptr inbounds i8, i8* %tmp586, i64 %tmp587
  %tmp588 = load i64, i64* %maxlen, align 8
  %tmp589 = load i8*, i8** %buf, align 8
  %arrayidx928 = getelementptr inbounds [2 x i32], [2 x i32]* %prefixes, i32 0, i64 0
  %tmp590 = load i32, i32* %arrayidx928, align 4
  %tmp591 = load i32, i32* %arg918, align 4
  %call929 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %add.ptr927, i64 %tmp588, i8* %tmp589, i32 %tmp590, i32 %tmp591, i32* %count797) #8
  store i32 %call929, i32* %retcount, align 4
  br label %sw.epilog936

sw.bb930:                                         ; preds = %sw.bb916
  %tmp592 = load i8*, i8** %result, align 8
  %tmp593 = load i64, i64* %length, align 8
  %add.ptr931 = getelementptr inbounds i8, i8* %tmp592, i64 %tmp593
  %tmp594 = load i64, i64* %maxlen, align 8
  %tmp595 = load i8*, i8** %buf, align 8
  %arrayidx932 = getelementptr inbounds [2 x i32], [2 x i32]* %prefixes, i32 0, i64 0
  %tmp596 = load i32, i32* %arrayidx932, align 4
  %arrayidx933 = getelementptr inbounds [2 x i32], [2 x i32]* %prefixes, i32 0, i64 1
  %tmp597 = load i32, i32* %arrayidx933, align 4
  %tmp598 = load i32, i32* %arg918, align 4
  %call934 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %add.ptr931, i64 %tmp594, i8* %tmp595, i32 %tmp596, i32 %tmp597, i32 %tmp598, i32* %count797) #8
  store i32 %call934, i32* %retcount, align 4
  br label %sw.epilog936

sw.default935:                                    ; preds = %sw.bb916
  call void @abort() #12
  unreachable

sw.epilog936:                                     ; preds = %sw.bb930, %sw.bb926, %sw.bb923
  br label %sw.epilog1170

sw.bb937:                                         ; preds = %if.end804
  %tmp599 = load %struct.char_directive*, %struct.char_directive** %dp, align 8
  %arg_index940 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %tmp599, i32 0, i32 10
  %tmp600 = load i64, i64* %arg_index940, align 8
  %arg941 = getelementptr inbounds %struct.arguments, %struct.arguments* %a, i32 0, i32 1
  %tmp601 = load %struct.argument*, %struct.argument** %arg941, align 8
  %arrayidx942 = getelementptr inbounds %struct.argument, %struct.argument* %tmp601, i64 %tmp600
  %a943 = getelementptr inbounds %struct.argument, %struct.argument* %arrayidx942, i32 0, i32 1
  %a_longint = bitcast %union.anon.17* %a943 to i64*
  %tmp602 = load i64, i64* %a_longint, align 8
  store i64 %tmp602, i64* %arg939, align 8
  %tmp603 = load i32, i32* %prefix_count, align 4
  switch i32 %tmp603, label %sw.default956 [
    i32 0, label %sw.bb944
    i32 1, label %sw.bb947
    i32 2, label %sw.bb951
  ]

sw.bb944:                                         ; preds = %sw.bb937
  %tmp604 = load i8*, i8** %result, align 8
  %tmp605 = load i64, i64* %length, align 8
  %add.ptr945 = getelementptr inbounds i8, i8* %tmp604, i64 %tmp605
  %tmp606 = load i64, i64* %maxlen, align 8
  %tmp607 = load i8*, i8** %buf, align 8
  %tmp608 = load i64, i64* %arg939, align 8
  %call946 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %add.ptr945, i64 %tmp606, i8* %tmp607, i64 %tmp608, i32* %count797) #8
  store i32 %call946, i32* %retcount, align 4
  br label %sw.epilog957

sw.bb947:                                         ; preds = %sw.bb937
  %tmp609 = load i8*, i8** %result, align 8
  %tmp610 = load i64, i64* %length, align 8
  %add.ptr948 = getelementptr inbounds i8, i8* %tmp609, i64 %tmp610
  %tmp611 = load i64, i64* %maxlen, align 8
  %tmp612 = load i8*, i8** %buf, align 8
  %arrayidx949 = getelementptr inbounds [2 x i32], [2 x i32]* %prefixes, i32 0, i64 0
  %tmp613 = load i32, i32* %arrayidx949, align 4
  %tmp614 = load i64, i64* %arg939, align 8
  %call950 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %add.ptr948, i64 %tmp611, i8* %tmp612, i32 %tmp613, i64 %tmp614, i32* %count797) #8
  store i32 %call950, i32* %retcount, align 4
  br label %sw.epilog957

sw.bb951:                                         ; preds = %sw.bb937
  %tmp615 = load i8*, i8** %result, align 8
  %tmp616 = load i64, i64* %length, align 8
  %add.ptr952 = getelementptr inbounds i8, i8* %tmp615, i64 %tmp616
  %tmp617 = load i64, i64* %maxlen, align 8
  %tmp618 = load i8*, i8** %buf, align 8
  %arrayidx953 = getelementptr inbounds [2 x i32], [2 x i32]* %prefixes, i32 0, i64 0
  %tmp619 = load i32, i32* %arrayidx953, align 4
  %arrayidx954 = getelementptr inbounds [2 x i32], [2 x i32]* %prefixes, i32 0, i64 1
  %tmp620 = load i32, i32* %arrayidx954, align 4
  %tmp621 = load i64, i64* %arg939, align 8
  %call955 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %add.ptr952, i64 %tmp617, i8* %tmp618, i32 %tmp619, i32 %tmp620, i64 %tmp621, i32* %count797) #8
  store i32 %call955, i32* %retcount, align 4
  br label %sw.epilog957

sw.default956:                                    ; preds = %sw.bb937
  call void @abort() #12
  unreachable

sw.epilog957:                                     ; preds = %sw.bb951, %sw.bb947, %sw.bb944
  br label %sw.epilog1170

sw.bb958:                                         ; preds = %if.end804
  %tmp622 = load %struct.char_directive*, %struct.char_directive** %dp, align 8
  %arg_index961 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %tmp622, i32 0, i32 10
  %tmp623 = load i64, i64* %arg_index961, align 8
  %arg962 = getelementptr inbounds %struct.arguments, %struct.arguments* %a, i32 0, i32 1
  %tmp624 = load %struct.argument*, %struct.argument** %arg962, align 8
  %arrayidx963 = getelementptr inbounds %struct.argument, %struct.argument* %tmp624, i64 %tmp623
  %a964 = getelementptr inbounds %struct.argument, %struct.argument* %arrayidx963, i32 0, i32 1
  %a_ulongint = bitcast %union.anon.17* %a964 to i64*
  %tmp625 = load i64, i64* %a_ulongint, align 8
  store i64 %tmp625, i64* %arg960, align 8
  %tmp626 = load i32, i32* %prefix_count, align 4
  switch i32 %tmp626, label %sw.default977 [
    i32 0, label %sw.bb965
    i32 1, label %sw.bb968
    i32 2, label %sw.bb972
  ]

sw.bb965:                                         ; preds = %sw.bb958
  %tmp627 = load i8*, i8** %result, align 8
  %tmp628 = load i64, i64* %length, align 8
  %add.ptr966 = getelementptr inbounds i8, i8* %tmp627, i64 %tmp628
  %tmp629 = load i64, i64* %maxlen, align 8
  %tmp630 = load i8*, i8** %buf, align 8
  %tmp631 = load i64, i64* %arg960, align 8
  %call967 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %add.ptr966, i64 %tmp629, i8* %tmp630, i64 %tmp631, i32* %count797) #8
  store i32 %call967, i32* %retcount, align 4
  br label %sw.epilog978

sw.bb968:                                         ; preds = %sw.bb958
  %tmp632 = load i8*, i8** %result, align 8
  %tmp633 = load i64, i64* %length, align 8
  %add.ptr969 = getelementptr inbounds i8, i8* %tmp632, i64 %tmp633
  %tmp634 = load i64, i64* %maxlen, align 8
  %tmp635 = load i8*, i8** %buf, align 8
  %arrayidx970 = getelementptr inbounds [2 x i32], [2 x i32]* %prefixes, i32 0, i64 0
  %tmp636 = load i32, i32* %arrayidx970, align 4
  %tmp637 = load i64, i64* %arg960, align 8
  %call971 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %add.ptr969, i64 %tmp634, i8* %tmp635, i32 %tmp636, i64 %tmp637, i32* %count797) #8
  store i32 %call971, i32* %retcount, align 4
  br label %sw.epilog978

sw.bb972:                                         ; preds = %sw.bb958
  %tmp638 = load i8*, i8** %result, align 8
  %tmp639 = load i64, i64* %length, align 8
  %add.ptr973 = getelementptr inbounds i8, i8* %tmp638, i64 %tmp639
  %tmp640 = load i64, i64* %maxlen, align 8
  %tmp641 = load i8*, i8** %buf, align 8
  %arrayidx974 = getelementptr inbounds [2 x i32], [2 x i32]* %prefixes, i32 0, i64 0
  %tmp642 = load i32, i32* %arrayidx974, align 4
  %arrayidx975 = getelementptr inbounds [2 x i32], [2 x i32]* %prefixes, i32 0, i64 1
  %tmp643 = load i32, i32* %arrayidx975, align 4
  %tmp644 = load i64, i64* %arg960, align 8
  %call976 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %add.ptr973, i64 %tmp640, i8* %tmp641, i32 %tmp642, i32 %tmp643, i64 %tmp644, i32* %count797) #8
  store i32 %call976, i32* %retcount, align 4
  br label %sw.epilog978

sw.default977:                                    ; preds = %sw.bb958
  call void @abort() #12
  unreachable

sw.epilog978:                                     ; preds = %sw.bb972, %sw.bb968, %sw.bb965
  br label %sw.epilog1170

sw.bb979:                                         ; preds = %if.end804
  %tmp645 = load %struct.char_directive*, %struct.char_directive** %dp, align 8
  %arg_index982 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %tmp645, i32 0, i32 10
  %tmp646 = load i64, i64* %arg_index982, align 8
  %arg983 = getelementptr inbounds %struct.arguments, %struct.arguments* %a, i32 0, i32 1
  %tmp647 = load %struct.argument*, %struct.argument** %arg983, align 8
  %arrayidx984 = getelementptr inbounds %struct.argument, %struct.argument* %tmp647, i64 %tmp646
  %a985 = getelementptr inbounds %struct.argument, %struct.argument* %arrayidx984, i32 0, i32 1
  %a_longlongint = bitcast %union.anon.17* %a985 to i64*
  %tmp648 = load i64, i64* %a_longlongint, align 8
  store i64 %tmp648, i64* %arg981, align 8
  %tmp649 = load i32, i32* %prefix_count, align 4
  switch i32 %tmp649, label %sw.default998 [
    i32 0, label %sw.bb986
    i32 1, label %sw.bb989
    i32 2, label %sw.bb993
  ]

sw.bb986:                                         ; preds = %sw.bb979
  %tmp650 = load i8*, i8** %result, align 8
  %tmp651 = load i64, i64* %length, align 8
  %add.ptr987 = getelementptr inbounds i8, i8* %tmp650, i64 %tmp651
  %tmp652 = load i64, i64* %maxlen, align 8
  %tmp653 = load i8*, i8** %buf, align 8
  %tmp654 = load i64, i64* %arg981, align 8
  %call988 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %add.ptr987, i64 %tmp652, i8* %tmp653, i64 %tmp654, i32* %count797) #8
  store i32 %call988, i32* %retcount, align 4
  br label %sw.epilog999

sw.bb989:                                         ; preds = %sw.bb979
  %tmp655 = load i8*, i8** %result, align 8
  %tmp656 = load i64, i64* %length, align 8
  %add.ptr990 = getelementptr inbounds i8, i8* %tmp655, i64 %tmp656
  %tmp657 = load i64, i64* %maxlen, align 8
  %tmp658 = load i8*, i8** %buf, align 8
  %arrayidx991 = getelementptr inbounds [2 x i32], [2 x i32]* %prefixes, i32 0, i64 0
  %tmp659 = load i32, i32* %arrayidx991, align 4
  %tmp660 = load i64, i64* %arg981, align 8
  %call992 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %add.ptr990, i64 %tmp657, i8* %tmp658, i32 %tmp659, i64 %tmp660, i32* %count797) #8
  store i32 %call992, i32* %retcount, align 4
  br label %sw.epilog999

sw.bb993:                                         ; preds = %sw.bb979
  %tmp661 = load i8*, i8** %result, align 8
  %tmp662 = load i64, i64* %length, align 8
  %add.ptr994 = getelementptr inbounds i8, i8* %tmp661, i64 %tmp662
  %tmp663 = load i64, i64* %maxlen, align 8
  %tmp664 = load i8*, i8** %buf, align 8
  %arrayidx995 = getelementptr inbounds [2 x i32], [2 x i32]* %prefixes, i32 0, i64 0
  %tmp665 = load i32, i32* %arrayidx995, align 4
  %arrayidx996 = getelementptr inbounds [2 x i32], [2 x i32]* %prefixes, i32 0, i64 1
  %tmp666 = load i32, i32* %arrayidx996, align 4
  %tmp667 = load i64, i64* %arg981, align 8
  %call997 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %add.ptr994, i64 %tmp663, i8* %tmp664, i32 %tmp665, i32 %tmp666, i64 %tmp667, i32* %count797) #8
  store i32 %call997, i32* %retcount, align 4
  br label %sw.epilog999

sw.default998:                                    ; preds = %sw.bb979
  call void @abort() #12
  unreachable

sw.epilog999:                                     ; preds = %sw.bb993, %sw.bb989, %sw.bb986
  br label %sw.epilog1170

sw.bb1000:                                        ; preds = %if.end804
  %tmp668 = load %struct.char_directive*, %struct.char_directive** %dp, align 8
  %arg_index1003 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %tmp668, i32 0, i32 10
  %tmp669 = load i64, i64* %arg_index1003, align 8
  %arg1004 = getelementptr inbounds %struct.arguments, %struct.arguments* %a, i32 0, i32 1
  %tmp670 = load %struct.argument*, %struct.argument** %arg1004, align 8
  %arrayidx1005 = getelementptr inbounds %struct.argument, %struct.argument* %tmp670, i64 %tmp669
  %a1006 = getelementptr inbounds %struct.argument, %struct.argument* %arrayidx1005, i32 0, i32 1
  %a_ulonglongint = bitcast %union.anon.17* %a1006 to i64*
  %tmp671 = load i64, i64* %a_ulonglongint, align 8
  store i64 %tmp671, i64* %arg1002, align 8
  %tmp672 = load i32, i32* %prefix_count, align 4
  switch i32 %tmp672, label %sw.default1019 [
    i32 0, label %sw.bb1007
    i32 1, label %sw.bb1010
    i32 2, label %sw.bb1014
  ]

sw.bb1007:                                        ; preds = %sw.bb1000
  %tmp673 = load i8*, i8** %result, align 8
  %tmp674 = load i64, i64* %length, align 8
  %add.ptr1008 = getelementptr inbounds i8, i8* %tmp673, i64 %tmp674
  %tmp675 = load i64, i64* %maxlen, align 8
  %tmp676 = load i8*, i8** %buf, align 8
  %tmp677 = load i64, i64* %arg1002, align 8
  %call1009 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %add.ptr1008, i64 %tmp675, i8* %tmp676, i64 %tmp677, i32* %count797) #8
  store i32 %call1009, i32* %retcount, align 4
  br label %sw.epilog1020

sw.bb1010:                                        ; preds = %sw.bb1000
  %tmp678 = load i8*, i8** %result, align 8
  %tmp679 = load i64, i64* %length, align 8
  %add.ptr1011 = getelementptr inbounds i8, i8* %tmp678, i64 %tmp679
  %tmp680 = load i64, i64* %maxlen, align 8
  %tmp681 = load i8*, i8** %buf, align 8
  %arrayidx1012 = getelementptr inbounds [2 x i32], [2 x i32]* %prefixes, i32 0, i64 0
  %tmp682 = load i32, i32* %arrayidx1012, align 4
  %tmp683 = load i64, i64* %arg1002, align 8
  %call1013 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %add.ptr1011, i64 %tmp680, i8* %tmp681, i32 %tmp682, i64 %tmp683, i32* %count797) #8
  store i32 %call1013, i32* %retcount, align 4
  br label %sw.epilog1020

sw.bb1014:                                        ; preds = %sw.bb1000
  %tmp684 = load i8*, i8** %result, align 8
  %tmp685 = load i64, i64* %length, align 8
  %add.ptr1015 = getelementptr inbounds i8, i8* %tmp684, i64 %tmp685
  %tmp686 = load i64, i64* %maxlen, align 8
  %tmp687 = load i8*, i8** %buf, align 8
  %arrayidx1016 = getelementptr inbounds [2 x i32], [2 x i32]* %prefixes, i32 0, i64 0
  %tmp688 = load i32, i32* %arrayidx1016, align 4
  %arrayidx1017 = getelementptr inbounds [2 x i32], [2 x i32]* %prefixes, i32 0, i64 1
  %tmp689 = load i32, i32* %arrayidx1017, align 4
  %tmp690 = load i64, i64* %arg1002, align 8
  %call1018 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %add.ptr1015, i64 %tmp686, i8* %tmp687, i32 %tmp688, i32 %tmp689, i64 %tmp690, i32* %count797) #8
  store i32 %call1018, i32* %retcount, align 4
  br label %sw.epilog1020

sw.default1019:                                   ; preds = %sw.bb1000
  call void @abort() #12
  unreachable

sw.epilog1020:                                    ; preds = %sw.bb1014, %sw.bb1010, %sw.bb1007
  br label %sw.epilog1170

sw.bb1021:                                        ; preds = %if.end804
  %tmp691 = load %struct.char_directive*, %struct.char_directive** %dp, align 8
  %arg_index1024 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %tmp691, i32 0, i32 10
  %tmp692 = load i64, i64* %arg_index1024, align 8
  %arg1025 = getelementptr inbounds %struct.arguments, %struct.arguments* %a, i32 0, i32 1
  %tmp693 = load %struct.argument*, %struct.argument** %arg1025, align 8
  %arrayidx1026 = getelementptr inbounds %struct.argument, %struct.argument* %tmp693, i64 %tmp692
  %a1027 = getelementptr inbounds %struct.argument, %struct.argument* %arrayidx1026, i32 0, i32 1
  %a_double = bitcast %union.anon.17* %a1027 to double*
  %tmp694 = load double, double* %a_double, align 8
  store double %tmp694, double* %arg1023, align 8
  %tmp695 = load i32, i32* %prefix_count, align 4
  switch i32 %tmp695, label %sw.default1040 [
    i32 0, label %sw.bb1028
    i32 1, label %sw.bb1031
    i32 2, label %sw.bb1035
  ]

sw.bb1028:                                        ; preds = %sw.bb1021
  %tmp696 = load i8*, i8** %result, align 8
  %tmp697 = load i64, i64* %length, align 8
  %add.ptr1029 = getelementptr inbounds i8, i8* %tmp696, i64 %tmp697
  %tmp698 = load i64, i64* %maxlen, align 8
  %tmp699 = load i8*, i8** %buf, align 8
  %tmp700 = load double, double* %arg1023, align 8
  %call1030 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %add.ptr1029, i64 %tmp698, i8* %tmp699, double %tmp700, i32* %count797) #8
  store i32 %call1030, i32* %retcount, align 4
  br label %sw.epilog1041

sw.bb1031:                                        ; preds = %sw.bb1021
  %tmp701 = load i8*, i8** %result, align 8
  %tmp702 = load i64, i64* %length, align 8
  %add.ptr1032 = getelementptr inbounds i8, i8* %tmp701, i64 %tmp702
  %tmp703 = load i64, i64* %maxlen, align 8
  %tmp704 = load i8*, i8** %buf, align 8
  %arrayidx1033 = getelementptr inbounds [2 x i32], [2 x i32]* %prefixes, i32 0, i64 0
  %tmp705 = load i32, i32* %arrayidx1033, align 4
  %tmp706 = load double, double* %arg1023, align 8
  %call1034 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %add.ptr1032, i64 %tmp703, i8* %tmp704, i32 %tmp705, double %tmp706, i32* %count797) #8
  store i32 %call1034, i32* %retcount, align 4
  br label %sw.epilog1041

sw.bb1035:                                        ; preds = %sw.bb1021
  %tmp707 = load i8*, i8** %result, align 8
  %tmp708 = load i64, i64* %length, align 8
  %add.ptr1036 = getelementptr inbounds i8, i8* %tmp707, i64 %tmp708
  %tmp709 = load i64, i64* %maxlen, align 8
  %tmp710 = load i8*, i8** %buf, align 8
  %arrayidx1037 = getelementptr inbounds [2 x i32], [2 x i32]* %prefixes, i32 0, i64 0
  %tmp711 = load i32, i32* %arrayidx1037, align 4
  %arrayidx1038 = getelementptr inbounds [2 x i32], [2 x i32]* %prefixes, i32 0, i64 1
  %tmp712 = load i32, i32* %arrayidx1038, align 4
  %tmp713 = load double, double* %arg1023, align 8
  %call1039 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %add.ptr1036, i64 %tmp709, i8* %tmp710, i32 %tmp711, i32 %tmp712, double %tmp713, i32* %count797) #8
  store i32 %call1039, i32* %retcount, align 4
  br label %sw.epilog1041

sw.default1040:                                   ; preds = %sw.bb1021
  call void @abort() #12
  unreachable

sw.epilog1041:                                    ; preds = %sw.bb1035, %sw.bb1031, %sw.bb1028
  br label %sw.epilog1170

sw.bb1042:                                        ; preds = %if.end804
  %tmp714 = load %struct.char_directive*, %struct.char_directive** %dp, align 8
  %arg_index1045 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %tmp714, i32 0, i32 10
  %tmp715 = load i64, i64* %arg_index1045, align 8
  %arg1046 = getelementptr inbounds %struct.arguments, %struct.arguments* %a, i32 0, i32 1
  %tmp716 = load %struct.argument*, %struct.argument** %arg1046, align 8
  %arrayidx1047 = getelementptr inbounds %struct.argument, %struct.argument* %tmp716, i64 %tmp715
  %a1048 = getelementptr inbounds %struct.argument, %struct.argument* %arrayidx1047, i32 0, i32 1
  %a_longdouble1049 = bitcast %union.anon.17* %a1048 to x86_fp80*
  %tmp717 = load x86_fp80, x86_fp80* %a_longdouble1049, align 16
  store x86_fp80 %tmp717, x86_fp80* %arg1044, align 16
  %tmp718 = load i32, i32* %prefix_count, align 4
  switch i32 %tmp718, label %sw.default1062 [
    i32 0, label %sw.bb1050
    i32 1, label %sw.bb1053
    i32 2, label %sw.bb1057
  ]

sw.bb1050:                                        ; preds = %sw.bb1042
  %tmp719 = load i8*, i8** %result, align 8
  %tmp720 = load i64, i64* %length, align 8
  %add.ptr1051 = getelementptr inbounds i8, i8* %tmp719, i64 %tmp720
  %tmp721 = load i64, i64* %maxlen, align 8
  %tmp722 = load i8*, i8** %buf, align 8
  %tmp723 = load x86_fp80, x86_fp80* %arg1044, align 16
  %call1052 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %add.ptr1051, i64 %tmp721, i8* %tmp722, x86_fp80 %tmp723, i32* %count797) #8
  store i32 %call1052, i32* %retcount, align 4
  br label %sw.epilog1063

sw.bb1053:                                        ; preds = %sw.bb1042
  %tmp724 = load i8*, i8** %result, align 8
  %tmp725 = load i64, i64* %length, align 8
  %add.ptr1054 = getelementptr inbounds i8, i8* %tmp724, i64 %tmp725
  %tmp726 = load i64, i64* %maxlen, align 8
  %tmp727 = load i8*, i8** %buf, align 8
  %arrayidx1055 = getelementptr inbounds [2 x i32], [2 x i32]* %prefixes, i32 0, i64 0
  %tmp728 = load i32, i32* %arrayidx1055, align 4
  %tmp729 = load x86_fp80, x86_fp80* %arg1044, align 16
  %call1056 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %add.ptr1054, i64 %tmp726, i8* %tmp727, i32 %tmp728, x86_fp80 %tmp729, i32* %count797) #8
  store i32 %call1056, i32* %retcount, align 4
  br label %sw.epilog1063

sw.bb1057:                                        ; preds = %sw.bb1042
  %tmp730 = load i8*, i8** %result, align 8
  %tmp731 = load i64, i64* %length, align 8
  %add.ptr1058 = getelementptr inbounds i8, i8* %tmp730, i64 %tmp731
  %tmp732 = load i64, i64* %maxlen, align 8
  %tmp733 = load i8*, i8** %buf, align 8
  %arrayidx1059 = getelementptr inbounds [2 x i32], [2 x i32]* %prefixes, i32 0, i64 0
  %tmp734 = load i32, i32* %arrayidx1059, align 4
  %arrayidx1060 = getelementptr inbounds [2 x i32], [2 x i32]* %prefixes, i32 0, i64 1
  %tmp735 = load i32, i32* %arrayidx1060, align 4
  %tmp736 = load x86_fp80, x86_fp80* %arg1044, align 16
  %call1061 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %add.ptr1058, i64 %tmp732, i8* %tmp733, i32 %tmp734, i32 %tmp735, x86_fp80 %tmp736, i32* %count797) #8
  store i32 %call1061, i32* %retcount, align 4
  br label %sw.epilog1063

sw.default1062:                                   ; preds = %sw.bb1042
  call void @abort() #12
  unreachable

sw.epilog1063:                                    ; preds = %sw.bb1057, %sw.bb1053, %sw.bb1050
  br label %sw.epilog1170

sw.bb1064:                                        ; preds = %if.end804
  %tmp737 = load %struct.char_directive*, %struct.char_directive** %dp, align 8
  %arg_index1067 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %tmp737, i32 0, i32 10
  %tmp738 = load i64, i64* %arg_index1067, align 8
  %arg1068 = getelementptr inbounds %struct.arguments, %struct.arguments* %a, i32 0, i32 1
  %tmp739 = load %struct.argument*, %struct.argument** %arg1068, align 8
  %arrayidx1069 = getelementptr inbounds %struct.argument, %struct.argument* %tmp739, i64 %tmp738
  %a1070 = getelementptr inbounds %struct.argument, %struct.argument* %arrayidx1069, i32 0, i32 1
  %a_char = bitcast %union.anon.17* %a1070 to i32*
  %tmp740 = load i32, i32* %a_char, align 4
  store i32 %tmp740, i32* %arg1066, align 4
  %tmp741 = load i32, i32* %prefix_count, align 4
  switch i32 %tmp741, label %sw.default1083 [
    i32 0, label %sw.bb1071
    i32 1, label %sw.bb1074
    i32 2, label %sw.bb1078
  ]

sw.bb1071:                                        ; preds = %sw.bb1064
  %tmp742 = load i8*, i8** %result, align 8
  %tmp743 = load i64, i64* %length, align 8
  %add.ptr1072 = getelementptr inbounds i8, i8* %tmp742, i64 %tmp743
  %tmp744 = load i64, i64* %maxlen, align 8
  %tmp745 = load i8*, i8** %buf, align 8
  %tmp746 = load i32, i32* %arg1066, align 4
  %call1073 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %add.ptr1072, i64 %tmp744, i8* %tmp745, i32 %tmp746, i32* %count797) #8
  store i32 %call1073, i32* %retcount, align 4
  br label %sw.epilog1084

sw.bb1074:                                        ; preds = %sw.bb1064
  %tmp747 = load i8*, i8** %result, align 8
  %tmp748 = load i64, i64* %length, align 8
  %add.ptr1075 = getelementptr inbounds i8, i8* %tmp747, i64 %tmp748
  %tmp749 = load i64, i64* %maxlen, align 8
  %tmp750 = load i8*, i8** %buf, align 8
  %arrayidx1076 = getelementptr inbounds [2 x i32], [2 x i32]* %prefixes, i32 0, i64 0
  %tmp751 = load i32, i32* %arrayidx1076, align 4
  %tmp752 = load i32, i32* %arg1066, align 4
  %call1077 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %add.ptr1075, i64 %tmp749, i8* %tmp750, i32 %tmp751, i32 %tmp752, i32* %count797) #8
  store i32 %call1077, i32* %retcount, align 4
  br label %sw.epilog1084

sw.bb1078:                                        ; preds = %sw.bb1064
  %tmp753 = load i8*, i8** %result, align 8
  %tmp754 = load i64, i64* %length, align 8
  %add.ptr1079 = getelementptr inbounds i8, i8* %tmp753, i64 %tmp754
  %tmp755 = load i64, i64* %maxlen, align 8
  %tmp756 = load i8*, i8** %buf, align 8
  %arrayidx1080 = getelementptr inbounds [2 x i32], [2 x i32]* %prefixes, i32 0, i64 0
  %tmp757 = load i32, i32* %arrayidx1080, align 4
  %arrayidx1081 = getelementptr inbounds [2 x i32], [2 x i32]* %prefixes, i32 0, i64 1
  %tmp758 = load i32, i32* %arrayidx1081, align 4
  %tmp759 = load i32, i32* %arg1066, align 4
  %call1082 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %add.ptr1079, i64 %tmp755, i8* %tmp756, i32 %tmp757, i32 %tmp758, i32 %tmp759, i32* %count797) #8
  store i32 %call1082, i32* %retcount, align 4
  br label %sw.epilog1084

sw.default1083:                                   ; preds = %sw.bb1064
  call void @abort() #12
  unreachable

sw.epilog1084:                                    ; preds = %sw.bb1078, %sw.bb1074, %sw.bb1071
  br label %sw.epilog1170

sw.bb1085:                                        ; preds = %if.end804
  %tmp760 = load %struct.char_directive*, %struct.char_directive** %dp, align 8
  %arg_index1088 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %tmp760, i32 0, i32 10
  %tmp761 = load i64, i64* %arg_index1088, align 8
  %arg1089 = getelementptr inbounds %struct.arguments, %struct.arguments* %a, i32 0, i32 1
  %tmp762 = load %struct.argument*, %struct.argument** %arg1089, align 8
  %arrayidx1090 = getelementptr inbounds %struct.argument, %struct.argument* %tmp762, i64 %tmp761
  %a1091 = getelementptr inbounds %struct.argument, %struct.argument* %arrayidx1090, i32 0, i32 1
  %a_wide_char = bitcast %union.anon.17* %a1091 to i32*
  %tmp763 = load i32, i32* %a_wide_char, align 4
  store i32 %tmp763, i32* %arg1087, align 4
  %tmp764 = load i32, i32* %prefix_count, align 4
  switch i32 %tmp764, label %sw.default1104 [
    i32 0, label %sw.bb1092
    i32 1, label %sw.bb1095
    i32 2, label %sw.bb1099
  ]

sw.bb1092:                                        ; preds = %sw.bb1085
  %tmp765 = load i8*, i8** %result, align 8
  %tmp766 = load i64, i64* %length, align 8
  %add.ptr1093 = getelementptr inbounds i8, i8* %tmp765, i64 %tmp766
  %tmp767 = load i64, i64* %maxlen, align 8
  %tmp768 = load i8*, i8** %buf, align 8
  %tmp769 = load i32, i32* %arg1087, align 4
  %call1094 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %add.ptr1093, i64 %tmp767, i8* %tmp768, i32 %tmp769, i32* %count797) #8
  store i32 %call1094, i32* %retcount, align 4
  br label %sw.epilog1105

sw.bb1095:                                        ; preds = %sw.bb1085
  %tmp770 = load i8*, i8** %result, align 8
  %tmp771 = load i64, i64* %length, align 8
  %add.ptr1096 = getelementptr inbounds i8, i8* %tmp770, i64 %tmp771
  %tmp772 = load i64, i64* %maxlen, align 8
  %tmp773 = load i8*, i8** %buf, align 8
  %arrayidx1097 = getelementptr inbounds [2 x i32], [2 x i32]* %prefixes, i32 0, i64 0
  %tmp774 = load i32, i32* %arrayidx1097, align 4
  %tmp775 = load i32, i32* %arg1087, align 4
  %call1098 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %add.ptr1096, i64 %tmp772, i8* %tmp773, i32 %tmp774, i32 %tmp775, i32* %count797) #8
  store i32 %call1098, i32* %retcount, align 4
  br label %sw.epilog1105

sw.bb1099:                                        ; preds = %sw.bb1085
  %tmp776 = load i8*, i8** %result, align 8
  %tmp777 = load i64, i64* %length, align 8
  %add.ptr1100 = getelementptr inbounds i8, i8* %tmp776, i64 %tmp777
  %tmp778 = load i64, i64* %maxlen, align 8
  %tmp779 = load i8*, i8** %buf, align 8
  %arrayidx1101 = getelementptr inbounds [2 x i32], [2 x i32]* %prefixes, i32 0, i64 0
  %tmp780 = load i32, i32* %arrayidx1101, align 4
  %arrayidx1102 = getelementptr inbounds [2 x i32], [2 x i32]* %prefixes, i32 0, i64 1
  %tmp781 = load i32, i32* %arrayidx1102, align 4
  %tmp782 = load i32, i32* %arg1087, align 4
  %call1103 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %add.ptr1100, i64 %tmp778, i8* %tmp779, i32 %tmp780, i32 %tmp781, i32 %tmp782, i32* %count797) #8
  store i32 %call1103, i32* %retcount, align 4
  br label %sw.epilog1105

sw.default1104:                                   ; preds = %sw.bb1085
  call void @abort() #12
  unreachable

sw.epilog1105:                                    ; preds = %sw.bb1099, %sw.bb1095, %sw.bb1092
  br label %sw.epilog1170

sw.bb1106:                                        ; preds = %if.end804
  %tmp783 = load %struct.char_directive*, %struct.char_directive** %dp, align 8
  %arg_index1109 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %tmp783, i32 0, i32 10
  %tmp784 = load i64, i64* %arg_index1109, align 8
  %arg1110 = getelementptr inbounds %struct.arguments, %struct.arguments* %a, i32 0, i32 1
  %tmp785 = load %struct.argument*, %struct.argument** %arg1110, align 8
  %arrayidx1111 = getelementptr inbounds %struct.argument, %struct.argument* %tmp785, i64 %tmp784
  %a1112 = getelementptr inbounds %struct.argument, %struct.argument* %arrayidx1111, i32 0, i32 1
  %a_string = bitcast %union.anon.17* %a1112 to i8**
  %tmp786 = load i8*, i8** %a_string, align 8
  store i8* %tmp786, i8** %arg1108, align 8
  %tmp787 = load i32, i32* %prefix_count, align 4
  switch i32 %tmp787, label %sw.default1125 [
    i32 0, label %sw.bb1113
    i32 1, label %sw.bb1116
    i32 2, label %sw.bb1120
  ]

sw.bb1113:                                        ; preds = %sw.bb1106
  %tmp788 = load i8*, i8** %result, align 8
  %tmp789 = load i64, i64* %length, align 8
  %add.ptr1114 = getelementptr inbounds i8, i8* %tmp788, i64 %tmp789
  %tmp790 = load i64, i64* %maxlen, align 8
  %tmp791 = load i8*, i8** %buf, align 8
  %tmp792 = load i8*, i8** %arg1108, align 8
  %call1115 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %add.ptr1114, i64 %tmp790, i8* %tmp791, i8* %tmp792, i32* %count797) #8
  store i32 %call1115, i32* %retcount, align 4
  br label %sw.epilog1126

sw.bb1116:                                        ; preds = %sw.bb1106
  %tmp793 = load i8*, i8** %result, align 8
  %tmp794 = load i64, i64* %length, align 8
  %add.ptr1117 = getelementptr inbounds i8, i8* %tmp793, i64 %tmp794
  %tmp795 = load i64, i64* %maxlen, align 8
  %tmp796 = load i8*, i8** %buf, align 8
  %arrayidx1118 = getelementptr inbounds [2 x i32], [2 x i32]* %prefixes, i32 0, i64 0
  %tmp797 = load i32, i32* %arrayidx1118, align 4
  %tmp798 = load i8*, i8** %arg1108, align 8
  %call1119 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %add.ptr1117, i64 %tmp795, i8* %tmp796, i32 %tmp797, i8* %tmp798, i32* %count797) #8
  store i32 %call1119, i32* %retcount, align 4
  br label %sw.epilog1126

sw.bb1120:                                        ; preds = %sw.bb1106
  %tmp799 = load i8*, i8** %result, align 8
  %tmp800 = load i64, i64* %length, align 8
  %add.ptr1121 = getelementptr inbounds i8, i8* %tmp799, i64 %tmp800
  %tmp801 = load i64, i64* %maxlen, align 8
  %tmp802 = load i8*, i8** %buf, align 8
  %arrayidx1122 = getelementptr inbounds [2 x i32], [2 x i32]* %prefixes, i32 0, i64 0
  %tmp803 = load i32, i32* %arrayidx1122, align 4
  %arrayidx1123 = getelementptr inbounds [2 x i32], [2 x i32]* %prefixes, i32 0, i64 1
  %tmp804 = load i32, i32* %arrayidx1123, align 4
  %tmp805 = load i8*, i8** %arg1108, align 8
  %call1124 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %add.ptr1121, i64 %tmp801, i8* %tmp802, i32 %tmp803, i32 %tmp804, i8* %tmp805, i32* %count797) #8
  store i32 %call1124, i32* %retcount, align 4
  br label %sw.epilog1126

sw.default1125:                                   ; preds = %sw.bb1106
  call void @abort() #12
  unreachable

sw.epilog1126:                                    ; preds = %sw.bb1120, %sw.bb1116, %sw.bb1113
  br label %sw.epilog1170

sw.bb1127:                                        ; preds = %if.end804
  %tmp806 = load %struct.char_directive*, %struct.char_directive** %dp, align 8
  %arg_index1130 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %tmp806, i32 0, i32 10
  %tmp807 = load i64, i64* %arg_index1130, align 8
  %arg1131 = getelementptr inbounds %struct.arguments, %struct.arguments* %a, i32 0, i32 1
  %tmp808 = load %struct.argument*, %struct.argument** %arg1131, align 8
  %arrayidx1132 = getelementptr inbounds %struct.argument, %struct.argument* %tmp808, i64 %tmp807
  %a1133 = getelementptr inbounds %struct.argument, %struct.argument* %arrayidx1132, i32 0, i32 1
  %a_wide_string = bitcast %union.anon.17* %a1133 to i32**
  %tmp809 = load i32*, i32** %a_wide_string, align 8
  store i32* %tmp809, i32** %arg1129, align 8
  %tmp810 = load i32, i32* %prefix_count, align 4
  switch i32 %tmp810, label %sw.default1146 [
    i32 0, label %sw.bb1134
    i32 1, label %sw.bb1137
    i32 2, label %sw.bb1141
  ]

sw.bb1134:                                        ; preds = %sw.bb1127
  %tmp811 = load i8*, i8** %result, align 8
  %tmp812 = load i64, i64* %length, align 8
  %add.ptr1135 = getelementptr inbounds i8, i8* %tmp811, i64 %tmp812
  %tmp813 = load i64, i64* %maxlen, align 8
  %tmp814 = load i8*, i8** %buf, align 8
  %tmp815 = load i32*, i32** %arg1129, align 8
  %call1136 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %add.ptr1135, i64 %tmp813, i8* %tmp814, i32* %tmp815, i32* %count797) #8
  store i32 %call1136, i32* %retcount, align 4
  br label %sw.epilog1147

sw.bb1137:                                        ; preds = %sw.bb1127
  %tmp816 = load i8*, i8** %result, align 8
  %tmp817 = load i64, i64* %length, align 8
  %add.ptr1138 = getelementptr inbounds i8, i8* %tmp816, i64 %tmp817
  %tmp818 = load i64, i64* %maxlen, align 8
  %tmp819 = load i8*, i8** %buf, align 8
  %arrayidx1139 = getelementptr inbounds [2 x i32], [2 x i32]* %prefixes, i32 0, i64 0
  %tmp820 = load i32, i32* %arrayidx1139, align 4
  %tmp821 = load i32*, i32** %arg1129, align 8
  %call1140 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %add.ptr1138, i64 %tmp818, i8* %tmp819, i32 %tmp820, i32* %tmp821, i32* %count797) #8
  store i32 %call1140, i32* %retcount, align 4
  br label %sw.epilog1147

sw.bb1141:                                        ; preds = %sw.bb1127
  %tmp822 = load i8*, i8** %result, align 8
  %tmp823 = load i64, i64* %length, align 8
  %add.ptr1142 = getelementptr inbounds i8, i8* %tmp822, i64 %tmp823
  %tmp824 = load i64, i64* %maxlen, align 8
  %tmp825 = load i8*, i8** %buf, align 8
  %arrayidx1143 = getelementptr inbounds [2 x i32], [2 x i32]* %prefixes, i32 0, i64 0
  %tmp826 = load i32, i32* %arrayidx1143, align 4
  %arrayidx1144 = getelementptr inbounds [2 x i32], [2 x i32]* %prefixes, i32 0, i64 1
  %tmp827 = load i32, i32* %arrayidx1144, align 4
  %tmp828 = load i32*, i32** %arg1129, align 8
  %call1145 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %add.ptr1142, i64 %tmp824, i8* %tmp825, i32 %tmp826, i32 %tmp827, i32* %tmp828, i32* %count797) #8
  store i32 %call1145, i32* %retcount, align 4
  br label %sw.epilog1147

sw.default1146:                                   ; preds = %sw.bb1127
  call void @abort() #12
  unreachable

sw.epilog1147:                                    ; preds = %sw.bb1141, %sw.bb1137, %sw.bb1134
  br label %sw.epilog1170

sw.bb1148:                                        ; preds = %if.end804
  %tmp829 = load %struct.char_directive*, %struct.char_directive** %dp, align 8
  %arg_index1151 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %tmp829, i32 0, i32 10
  %tmp830 = load i64, i64* %arg_index1151, align 8
  %arg1152 = getelementptr inbounds %struct.arguments, %struct.arguments* %a, i32 0, i32 1
  %tmp831 = load %struct.argument*, %struct.argument** %arg1152, align 8
  %arrayidx1153 = getelementptr inbounds %struct.argument, %struct.argument* %tmp831, i64 %tmp830
  %a1154 = getelementptr inbounds %struct.argument, %struct.argument* %arrayidx1153, i32 0, i32 1
  %a_pointer = bitcast %union.anon.17* %a1154 to i8**
  %tmp832 = load i8*, i8** %a_pointer, align 8
  store i8* %tmp832, i8** %arg1150, align 8
  %tmp833 = load i32, i32* %prefix_count, align 4
  switch i32 %tmp833, label %sw.default1167 [
    i32 0, label %sw.bb1155
    i32 1, label %sw.bb1158
    i32 2, label %sw.bb1162
  ]

sw.bb1155:                                        ; preds = %sw.bb1148
  %tmp834 = load i8*, i8** %result, align 8
  %tmp835 = load i64, i64* %length, align 8
  %add.ptr1156 = getelementptr inbounds i8, i8* %tmp834, i64 %tmp835
  %tmp836 = load i64, i64* %maxlen, align 8
  %tmp837 = load i8*, i8** %buf, align 8
  %tmp838 = load i8*, i8** %arg1150, align 8
  %call1157 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %add.ptr1156, i64 %tmp836, i8* %tmp837, i8* %tmp838, i32* %count797) #8
  store i32 %call1157, i32* %retcount, align 4
  br label %sw.epilog1168

sw.bb1158:                                        ; preds = %sw.bb1148
  %tmp839 = load i8*, i8** %result, align 8
  %tmp840 = load i64, i64* %length, align 8
  %add.ptr1159 = getelementptr inbounds i8, i8* %tmp839, i64 %tmp840
  %tmp841 = load i64, i64* %maxlen, align 8
  %tmp842 = load i8*, i8** %buf, align 8
  %arrayidx1160 = getelementptr inbounds [2 x i32], [2 x i32]* %prefixes, i32 0, i64 0
  %tmp843 = load i32, i32* %arrayidx1160, align 4
  %tmp844 = load i8*, i8** %arg1150, align 8
  %call1161 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %add.ptr1159, i64 %tmp841, i8* %tmp842, i32 %tmp843, i8* %tmp844, i32* %count797) #8
  store i32 %call1161, i32* %retcount, align 4
  br label %sw.epilog1168

sw.bb1162:                                        ; preds = %sw.bb1148
  %tmp845 = load i8*, i8** %result, align 8
  %tmp846 = load i64, i64* %length, align 8
  %add.ptr1163 = getelementptr inbounds i8, i8* %tmp845, i64 %tmp846
  %tmp847 = load i64, i64* %maxlen, align 8
  %tmp848 = load i8*, i8** %buf, align 8
  %arrayidx1164 = getelementptr inbounds [2 x i32], [2 x i32]* %prefixes, i32 0, i64 0
  %tmp849 = load i32, i32* %arrayidx1164, align 4
  %arrayidx1165 = getelementptr inbounds [2 x i32], [2 x i32]* %prefixes, i32 0, i64 1
  %tmp850 = load i32, i32* %arrayidx1165, align 4
  %tmp851 = load i8*, i8** %arg1150, align 8
  %call1166 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %add.ptr1163, i64 %tmp847, i8* %tmp848, i32 %tmp849, i32 %tmp850, i8* %tmp851, i32* %count797) #8
  store i32 %call1166, i32* %retcount, align 4
  br label %sw.epilog1168

sw.default1167:                                   ; preds = %sw.bb1148
  call void @abort() #12
  unreachable

sw.epilog1168:                                    ; preds = %sw.bb1162, %sw.bb1158, %sw.bb1155
  br label %sw.epilog1170

sw.default1169:                                   ; preds = %if.end804
  call void @abort() #12
  unreachable

sw.epilog1170:                                    ; preds = %sw.epilog1168, %sw.epilog1147, %sw.epilog1126, %sw.epilog1105, %sw.epilog1084, %sw.epilog1063, %sw.epilog1041, %sw.epilog1020, %sw.epilog999, %sw.epilog978, %sw.epilog957, %sw.epilog936, %sw.epilog915, %sw.epilog893, %sw.epilog871, %sw.epilog849, %sw.epilog827
  %tmp852 = load i32, i32* %count797, align 4
  %cmp1171 = icmp sge i32 %tmp852, 0
  br i1 %cmp1171, label %if.then1173, label %if.else1190

if.then1173:                                      ; preds = %sw.epilog1170
  %tmp853 = load i32, i32* %count797, align 4
  %conv1174 = sext i32 %tmp853 to i64
  %tmp854 = load i64, i64* %maxlen, align 8
  %cmp1175 = icmp ult i64 %conv1174, %tmp854
  br i1 %cmp1175, label %land.lhs.true1177, label %if.then1173.if.end1185_crit_edge

if.then1173.if.end1185_crit_edge:                 ; preds = %if.then1173
  br label %if.end1185

land.lhs.true1177:                                ; preds = %if.then1173
  %tmp855 = load i32, i32* %count797, align 4
  %idxprom1178 = sext i32 %tmp855 to i64
  %tmp856 = load i8*, i8** %result, align 8
  %tmp857 = load i64, i64* %length, align 8
  %add.ptr1179 = getelementptr inbounds i8, i8* %tmp856, i64 %tmp857
  %arrayidx1180 = getelementptr inbounds i8, i8* %add.ptr1179, i64 %idxprom1178
  %tmp858 = load i8, i8* %arrayidx1180, align 1
  %conv1181 = sext i8 %tmp858 to i32
  %cmp1182 = icmp ne i32 %conv1181, 0
  br i1 %cmp1182, label %if.then1184, label %land.lhs.true1177.if.end1185_crit_edge

land.lhs.true1177.if.end1185_crit_edge:           ; preds = %land.lhs.true1177
  br label %if.end1185

if.then1184:                                      ; preds = %land.lhs.true1177
  call void @abort() #12
  unreachable

if.end1185:                                       ; preds = %land.lhs.true1177.if.end1185_crit_edge, %if.then1173.if.end1185_crit_edge
  %tmp859 = load i32, i32* %retcount, align 4
  %tmp860 = load i32, i32* %count797, align 4
  %cmp1186 = icmp sgt i32 %tmp859, %tmp860
  br i1 %cmp1186, label %if.then1188, label %if.end1185.if.end1189_crit_edge

if.end1185.if.end1189_crit_edge:                  ; preds = %if.end1185
  br label %if.end1189

if.then1188:                                      ; preds = %if.end1185
  %tmp861 = load i32, i32* %retcount, align 4
  store i32 %tmp861, i32* %count797, align 4
  br label %if.end1189

if.end1189:                                       ; preds = %if.end1185.if.end1189_crit_edge, %if.then1188
  br label %if.end1270

if.else1190:                                      ; preds = %sw.epilog1170
  %tmp862 = load i8*, i8** %fbp, align 8
  %arrayidx1191 = getelementptr inbounds i8, i8* %tmp862, i64 1
  %tmp863 = load i8, i8* %arrayidx1191, align 1
  %conv1192 = sext i8 %tmp863 to i32
  %cmp1193 = icmp ne i32 %conv1192, 0
  br i1 %cmp1193, label %if.then1195, label %if.else1197

if.then1195:                                      ; preds = %if.else1190
  %tmp864 = load i8*, i8** %fbp, align 8
  %arrayidx1196 = getelementptr inbounds i8, i8* %tmp864, i64 1
  store i8 0, i8* %arrayidx1196, align 1
  br label %for.cond795.backedge

for.cond795.backedge:                             ; preds = %if.then1195, %if.end1266, %if.end1373
  br label %for.cond795

if.else1197:                                      ; preds = %if.else1190
  %tmp865 = load i32, i32* %retcount, align 4
  %cmp1198 = icmp slt i32 %tmp865, 0
  br i1 %cmp1198, label %if.then1200, label %if.else1267

if.then1200:                                      ; preds = %if.else1197
  %tmp866 = load i64, i64* %allocated, align 8
  %cmp1202 = icmp ule i64 %tmp866, 9223372036854775807
  br i1 %cmp1202, label %cond.true1204, label %cond.false1206

cond.true1204:                                    ; preds = %if.then1200
  %tmp867 = load i64, i64* %allocated, align 8
  %mul1205 = mul i64 %tmp867, 2
  store i64 %mul1205, i64* %mul1205.reg2mem
  %mul1205.reload = load i64, i64* %mul1205.reg2mem
  store i64 %mul1205.reload, i64* %cond1208.reg2mem
  br label %cond.end1207

cond.false1206:                                   ; preds = %if.then1200
  store i64 -1, i64* %cond1208.reg2mem
  br label %cond.end1207

cond.end1207:                                     ; preds = %cond.false1206, %cond.true1204
  %cond1208.reload = load i64, i64* %cond1208.reg2mem
  %call1209 = call i64 @xsum(i64 %cond1208.reload, i64 12) #13
  store i64 %call1209, i64* %bigger_need, align 8
  %tmp868 = load i64, i64* %bigger_need, align 8
  %tmp869 = load i64, i64* %allocated, align 8
  %cmp1210 = icmp ugt i64 %tmp868, %tmp869
  br i1 %cmp1210, label %if.then1212, label %cond.end1207.if.end1266_crit_edge

cond.end1207.if.end1266_crit_edge:                ; preds = %cond.end1207
  br label %if.end1266

if.then1212:                                      ; preds = %cond.end1207
  %tmp870 = load i64, i64* %allocated, align 8
  %cmp1217 = icmp ugt i64 %tmp870, 0
  br i1 %cmp1217, label %cond.true1219, label %cond.false1227

cond.true1219:                                    ; preds = %if.then1212
  %tmp871 = load i64, i64* %allocated, align 8
  %cmp1220 = icmp ule i64 %tmp871, 9223372036854775807
  br i1 %cmp1220, label %cond.true1222, label %cond.false1224

cond.true1222:                                    ; preds = %cond.true1219
  %tmp872 = load i64, i64* %allocated, align 8
  %mul1223 = mul i64 %tmp872, 2
  store i64 %mul1223, i64* %mul1223.reg2mem
  %mul1223.reload = load i64, i64* %mul1223.reg2mem
  store i64 %mul1223.reload, i64* %cond1226.reg2mem1020
  br label %cond.end1225

cond.false1224:                                   ; preds = %cond.true1219
  store i64 -1, i64* %cond1226.reg2mem1020
  br label %cond.end1225

cond.end1225:                                     ; preds = %cond.false1224, %cond.true1222
  %cond1226.reload1021 = load i64, i64* %cond1226.reg2mem1020
  store i64 %cond1226.reload1021, i64* %cond1226.reg2mem
  %cond1226.reload = load i64, i64* %cond1226.reg2mem
  store i64 %cond1226.reload, i64* %cond1229.reg2mem
  br label %cond.end1228

cond.false1227:                                   ; preds = %if.then1212
  store i64 12, i64* %cond1229.reg2mem
  br label %cond.end1228

cond.end1228:                                     ; preds = %cond.false1227, %cond.end1225
  %cond1229.reload = load i64, i64* %cond1229.reg2mem
  store i64 %cond1229.reload, i64* %allocated, align 8
  %tmp873 = load i64, i64* %bigger_need, align 8
  %tmp874 = load i64, i64* %allocated, align 8
  %cmp1230 = icmp ugt i64 %tmp873, %tmp874
  br i1 %cmp1230, label %if.then1232, label %cond.end1228.if.end1233_crit_edge

cond.end1228.if.end1233_crit_edge:                ; preds = %cond.end1228
  br label %if.end1233

if.then1232:                                      ; preds = %cond.end1228
  %tmp875 = load i64, i64* %bigger_need, align 8
  store i64 %tmp875, i64* %allocated, align 8
  br label %if.end1233

if.end1233:                                       ; preds = %cond.end1228.if.end1233_crit_edge, %if.then1232
  %tmp876 = load i64, i64* %allocated, align 8
  %cmp1234 = icmp ule i64 %tmp876, -1
  br i1 %cmp1234, label %cond.true1236, label %cond.false1238

cond.true1236:                                    ; preds = %if.end1233
  %tmp877 = load i64, i64* %allocated, align 8
  %mul1237 = mul i64 %tmp877, 1
  store i64 %mul1237, i64* %mul1237.reg2mem
  %mul1237.reload = load i64, i64* %mul1237.reg2mem
  store i64 %mul1237.reload, i64* %cond1240.reg2mem
  br label %cond.end1239

cond.false1238:                                   ; preds = %if.end1233
  store i64 -1, i64* %cond1240.reg2mem
  br label %cond.end1239

cond.end1239:                                     ; preds = %cond.false1238, %cond.true1236
  %cond1240.reload = load i64, i64* %cond1240.reg2mem
  store i64 %cond1240.reload, i64* %memory_size1214, align 8
  %tmp878 = load i64, i64* %memory_size1214, align 8
  %cmp1241 = icmp eq i64 %tmp878, -1
  br i1 %cmp1241, label %if.then1243, label %if.end1244

if.then1243:                                      ; preds = %cond.end1239
  br label %out_of_memory

if.end1244:                                       ; preds = %cond.end1239
  %tmp879 = load i8*, i8** %result, align 8
  %tmp880 = load i8*, i8** %resultbuf.addr, align 8
  %cmp1245 = icmp eq i8* %tmp879, %tmp880
  br i1 %cmp1245, label %if.end1244.if.then1250_crit_edge, label %lor.lhs.false1247

if.end1244.if.then1250_crit_edge:                 ; preds = %if.end1244
  br label %if.then1250

lor.lhs.false1247:                                ; preds = %if.end1244
  %tmp881 = load i8*, i8** %result, align 8
  %cmp1248 = icmp eq i8* %tmp881, null
  br i1 %cmp1248, label %lor.lhs.false1247.if.then1250_crit_edge, label %if.else1252

lor.lhs.false1247.if.then1250_crit_edge:          ; preds = %lor.lhs.false1247
  br label %if.then1250

if.then1250:                                      ; preds = %lor.lhs.false1247.if.then1250_crit_edge, %if.end1244.if.then1250_crit_edge
  %tmp882 = load i64, i64* %memory_size1214, align 8
  %call1251 = call noalias i8* @malloc(i64 %tmp882) #8
  store i8* %call1251, i8** %memory1216, align 8
  br label %if.end1254

if.else1252:                                      ; preds = %lor.lhs.false1247
  %tmp883 = load i8*, i8** %result, align 8
  %tmp884 = load i64, i64* %memory_size1214, align 8
  %call1253 = call i8* @realloc(i8* %tmp883, i64 %tmp884) #8
  store i8* %call1253, i8** %memory1216, align 8
  br label %if.end1254

if.end1254:                                       ; preds = %if.else1252, %if.then1250
  %tmp885 = load i8*, i8** %memory1216, align 8
  %cmp1255 = icmp eq i8* %tmp885, null
  br i1 %cmp1255, label %if.then1257, label %if.end1258

if.then1257:                                      ; preds = %if.end1254
  br label %out_of_memory

if.end1258:                                       ; preds = %if.end1254
  %tmp886 = load i8*, i8** %result, align 8
  %tmp887 = load i8*, i8** %resultbuf.addr, align 8
  %cmp1259 = icmp eq i8* %tmp886, %tmp887
  br i1 %cmp1259, label %land.lhs.true1261, label %if.end1258.if.end1265_crit_edge

if.end1258.if.end1265_crit_edge:                  ; preds = %if.end1258
  br label %if.end1265

land.lhs.true1261:                                ; preds = %if.end1258
  %tmp888 = load i64, i64* %length, align 8
  %cmp1262 = icmp ugt i64 %tmp888, 0
  br i1 %cmp1262, label %if.then1264, label %land.lhs.true1261.if.end1265_crit_edge

land.lhs.true1261.if.end1265_crit_edge:           ; preds = %land.lhs.true1261
  br label %if.end1265

if.then1264:                                      ; preds = %land.lhs.true1261
  %tmp889 = load i8*, i8** %memory1216, align 8
  %tmp890 = load i8*, i8** %result, align 8
  %tmp891 = load i64, i64* %length, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %tmp889, i8* %tmp890, i64 %tmp891, i32 1, i1 false)
  br label %if.end1265

if.end1265:                                       ; preds = %land.lhs.true1261.if.end1265_crit_edge, %if.end1258.if.end1265_crit_edge, %if.then1264
  %tmp892 = load i8*, i8** %memory1216, align 8
  store i8* %tmp892, i8** %result, align 8
  br label %if.end1266

if.end1266:                                       ; preds = %cond.end1207.if.end1266_crit_edge, %if.end1265
  br label %for.cond795.backedge

if.else1267:                                      ; preds = %if.else1197
  %tmp893 = load i32, i32* %retcount, align 4
  store i32 %tmp893, i32* %count797, align 4
  br label %if.end1268

if.end1268:                                       ; preds = %if.else1267
  br label %if.end1269

if.end1269:                                       ; preds = %if.end1268
  br label %if.end1270

if.end1270:                                       ; preds = %if.end1269, %if.end1189
  %tmp894 = load i32, i32* %count797, align 4
  %cmp1271 = icmp slt i32 %tmp894, 0
  br i1 %cmp1271, label %if.then1273, label %if.end1292

if.then1273:                                      ; preds = %if.end1270
  %tmp895 = load i8*, i8** %result, align 8
  %tmp896 = load i8*, i8** %resultbuf.addr, align 8
  %cmp1274 = icmp eq i8* %tmp895, %tmp896
  br i1 %cmp1274, label %if.then1273.if.end1280_crit_edge, label %lor.lhs.false1276

if.then1273.if.end1280_crit_edge:                 ; preds = %if.then1273
  br label %if.end1280

lor.lhs.false1276:                                ; preds = %if.then1273
  %tmp897 = load i8*, i8** %result, align 8
  %cmp1277 = icmp eq i8* %tmp897, null
  br i1 %cmp1277, label %lor.lhs.false1276.if.end1280_crit_edge, label %if.then1279

lor.lhs.false1276.if.end1280_crit_edge:           ; preds = %lor.lhs.false1276
  br label %if.end1280

if.then1279:                                      ; preds = %lor.lhs.false1276
  %tmp898 = load i8*, i8** %result, align 8
  call void @free(i8* %tmp898) #8
  br label %if.end1280

if.end1280:                                       ; preds = %lor.lhs.false1276.if.end1280_crit_edge, %if.then1273.if.end1280_crit_edge, %if.then1279
  %tmp899 = load i8*, i8** %buf_malloced, align 8
  %cmp1281 = icmp ne i8* %tmp899, null
  br i1 %cmp1281, label %if.then1283, label %if.end1280.if.end1284_crit_edge

if.end1280.if.end1284_crit_edge:                  ; preds = %if.end1280
  br label %if.end1284

if.then1283:                                      ; preds = %if.end1280
  %tmp900 = load i8*, i8** %buf_malloced, align 8
  call void @free(i8* %tmp900) #8
  br label %if.end1284

if.end1284:                                       ; preds = %if.end1280.if.end1284_crit_edge, %if.then1283
  %dir1285 = getelementptr inbounds %struct.char_directives, %struct.char_directives* %d, i32 0, i32 1
  %tmp901 = load %struct.char_directive*, %struct.char_directive** %dir1285, align 8
  %tmp902 = bitcast %struct.char_directive* %tmp901 to i8*
  call void @free(i8* %tmp902) #8
  %arg1286 = getelementptr inbounds %struct.arguments, %struct.arguments* %a, i32 0, i32 1
  %tmp903 = load %struct.argument*, %struct.argument** %arg1286, align 8
  %tobool1287 = icmp ne %struct.argument* %tmp903, null
  br i1 %tobool1287, label %if.then1288, label %if.end1284.if.end1290_crit_edge

if.end1284.if.end1290_crit_edge:                  ; preds = %if.end1284
  br label %if.end1290

if.then1288:                                      ; preds = %if.end1284
  %arg1289 = getelementptr inbounds %struct.arguments, %struct.arguments* %a, i32 0, i32 1
  %tmp904 = load %struct.argument*, %struct.argument** %arg1289, align 8
  %tmp905 = bitcast %struct.argument* %tmp904 to i8*
  call void @free(i8* %tmp905) #8
  br label %if.end1290

if.end1290:                                       ; preds = %if.end1284.if.end1290_crit_edge, %if.then1288
  %call1291 = call i32* @__errno_location() #14
  store i32 22, i32* %call1291, align 4
  store i8* null, i8** %retval
  br label %return

if.end1292:                                       ; preds = %if.end1270
  %tmp906 = load i32, i32* %count797, align 4
  %add1293 = add i32 %tmp906, 1
  %conv1294 = zext i32 %add1293 to i64
  %tmp907 = load i64, i64* %maxlen, align 8
  %cmp1295 = icmp uge i64 %conv1294, %tmp907
  br i1 %cmp1295, label %if.then1297, label %if.end1374

if.then1297:                                      ; preds = %if.end1292
  %tmp908 = load i64, i64* %maxlen, align 8
  %cmp1298 = icmp eq i64 %tmp908, 2147483647
  br i1 %cmp1298, label %if.then1300, label %if.else1301

if.then1300:                                      ; preds = %if.then1297
  br label %overflow

if.else1301:                                      ; preds = %if.then1297
  %tmp909 = load i64, i64* %length, align 8
  %tmp910 = load i32, i32* %count797, align 4
  %add1304 = add i32 %tmp910, 2
  %conv1305 = zext i32 %add1304 to i64
  %add1306 = add i64 %conv1305, 1
  %sub1307 = sub i64 %add1306, 1
  %div = udiv i64 %sub1307, 1
  %call1308 = call i64 @xsum(i64 %tmp909, i64 %div) #13
  store i64 %call1308, i64* %call1308.reg2mem
  %tmp911 = load i64, i64* %allocated, align 8
  %cmp1309 = icmp ule i64 %tmp911, 9223372036854775807
  br i1 %cmp1309, label %cond.true1311, label %cond.false1313

cond.true1311:                                    ; preds = %if.else1301
  %tmp912 = load i64, i64* %allocated, align 8
  %mul1312 = mul i64 %tmp912, 2
  store i64 %mul1312, i64* %mul1312.reg2mem
  %mul1312.reload = load i64, i64* %mul1312.reg2mem
  store i64 %mul1312.reload, i64* %cond1315.reg2mem
  br label %cond.end1314

cond.false1313:                                   ; preds = %if.else1301
  store i64 -1, i64* %cond1315.reg2mem
  br label %cond.end1314

cond.end1314:                                     ; preds = %cond.false1313, %cond.true1311
  %cond1315.reload = load i64, i64* %cond1315.reg2mem
  %call1308.reload = load i64, i64* %call1308.reg2mem
  %call1316 = call i64 @xmax(i64 %call1308.reload, i64 %cond1315.reload) #13
  store i64 %call1316, i64* %n1303, align 8
  %tmp913 = load i64, i64* %n1303, align 8
  %tmp914 = load i64, i64* %allocated, align 8
  %cmp1317 = icmp ugt i64 %tmp913, %tmp914
  br i1 %cmp1317, label %if.then1319, label %cond.end1314.if.end1373_crit_edge

cond.end1314.if.end1373_crit_edge:                ; preds = %cond.end1314
  br label %if.end1373

if.then1319:                                      ; preds = %cond.end1314
  %tmp915 = load i64, i64* %allocated, align 8
  %cmp1324 = icmp ugt i64 %tmp915, 0
  br i1 %cmp1324, label %cond.true1326, label %cond.false1334

cond.true1326:                                    ; preds = %if.then1319
  %tmp916 = load i64, i64* %allocated, align 8
  %cmp1327 = icmp ule i64 %tmp916, 9223372036854775807
  br i1 %cmp1327, label %cond.true1329, label %cond.false1331

cond.true1329:                                    ; preds = %cond.true1326
  %tmp917 = load i64, i64* %allocated, align 8
  %mul1330 = mul i64 %tmp917, 2
  store i64 %mul1330, i64* %mul1330.reg2mem
  %mul1330.reload = load i64, i64* %mul1330.reg2mem
  store i64 %mul1330.reload, i64* %cond1333.reg2mem1018
  br label %cond.end1332

cond.false1331:                                   ; preds = %cond.true1326
  store i64 -1, i64* %cond1333.reg2mem1018
  br label %cond.end1332

cond.end1332:                                     ; preds = %cond.false1331, %cond.true1329
  %cond1333.reload1019 = load i64, i64* %cond1333.reg2mem1018
  store i64 %cond1333.reload1019, i64* %cond1333.reg2mem
  %cond1333.reload = load i64, i64* %cond1333.reg2mem
  store i64 %cond1333.reload, i64* %cond1336.reg2mem
  br label %cond.end1335

cond.false1334:                                   ; preds = %if.then1319
  store i64 12, i64* %cond1336.reg2mem
  br label %cond.end1335

cond.end1335:                                     ; preds = %cond.false1334, %cond.end1332
  %cond1336.reload = load i64, i64* %cond1336.reg2mem
  store i64 %cond1336.reload, i64* %allocated, align 8
  %tmp918 = load i64, i64* %n1303, align 8
  %tmp919 = load i64, i64* %allocated, align 8
  %cmp1337 = icmp ugt i64 %tmp918, %tmp919
  br i1 %cmp1337, label %if.then1339, label %cond.end1335.if.end1340_crit_edge

cond.end1335.if.end1340_crit_edge:                ; preds = %cond.end1335
  br label %if.end1340

if.then1339:                                      ; preds = %cond.end1335
  %tmp920 = load i64, i64* %n1303, align 8
  store i64 %tmp920, i64* %allocated, align 8
  br label %if.end1340

if.end1340:                                       ; preds = %cond.end1335.if.end1340_crit_edge, %if.then1339
  %tmp921 = load i64, i64* %allocated, align 8
  %cmp1341 = icmp ule i64 %tmp921, -1
  br i1 %cmp1341, label %cond.true1343, label %cond.false1345

cond.true1343:                                    ; preds = %if.end1340
  %tmp922 = load i64, i64* %allocated, align 8
  %mul1344 = mul i64 %tmp922, 1
  store i64 %mul1344, i64* %mul1344.reg2mem
  %mul1344.reload = load i64, i64* %mul1344.reg2mem
  store i64 %mul1344.reload, i64* %cond1347.reg2mem
  br label %cond.end1346

cond.false1345:                                   ; preds = %if.end1340
  store i64 -1, i64* %cond1347.reg2mem
  br label %cond.end1346

cond.end1346:                                     ; preds = %cond.false1345, %cond.true1343
  %cond1347.reload = load i64, i64* %cond1347.reg2mem
  store i64 %cond1347.reload, i64* %memory_size1321, align 8
  %tmp923 = load i64, i64* %memory_size1321, align 8
  %cmp1348 = icmp eq i64 %tmp923, -1
  br i1 %cmp1348, label %if.then1350, label %if.end1351

if.then1350:                                      ; preds = %cond.end1346
  br label %out_of_memory

if.end1351:                                       ; preds = %cond.end1346
  %tmp924 = load i8*, i8** %result, align 8
  %tmp925 = load i8*, i8** %resultbuf.addr, align 8
  %cmp1352 = icmp eq i8* %tmp924, %tmp925
  br i1 %cmp1352, label %if.end1351.if.then1357_crit_edge, label %lor.lhs.false1354

if.end1351.if.then1357_crit_edge:                 ; preds = %if.end1351
  br label %if.then1357

lor.lhs.false1354:                                ; preds = %if.end1351
  %tmp926 = load i8*, i8** %result, align 8
  %cmp1355 = icmp eq i8* %tmp926, null
  br i1 %cmp1355, label %lor.lhs.false1354.if.then1357_crit_edge, label %if.else1359

lor.lhs.false1354.if.then1357_crit_edge:          ; preds = %lor.lhs.false1354
  br label %if.then1357

if.then1357:                                      ; preds = %lor.lhs.false1354.if.then1357_crit_edge, %if.end1351.if.then1357_crit_edge
  %tmp927 = load i64, i64* %memory_size1321, align 8
  %call1358 = call noalias i8* @malloc(i64 %tmp927) #8
  store i8* %call1358, i8** %memory1323, align 8
  br label %if.end1361

if.else1359:                                      ; preds = %lor.lhs.false1354
  %tmp928 = load i8*, i8** %result, align 8
  %tmp929 = load i64, i64* %memory_size1321, align 8
  %call1360 = call i8* @realloc(i8* %tmp928, i64 %tmp929) #8
  store i8* %call1360, i8** %memory1323, align 8
  br label %if.end1361

if.end1361:                                       ; preds = %if.else1359, %if.then1357
  %tmp930 = load i8*, i8** %memory1323, align 8
  %cmp1362 = icmp eq i8* %tmp930, null
  br i1 %cmp1362, label %if.then1364, label %if.end1365

if.then1364:                                      ; preds = %if.end1361
  br label %out_of_memory

if.end1365:                                       ; preds = %if.end1361
  %tmp931 = load i8*, i8** %result, align 8
  %tmp932 = load i8*, i8** %resultbuf.addr, align 8
  %cmp1366 = icmp eq i8* %tmp931, %tmp932
  br i1 %cmp1366, label %land.lhs.true1368, label %if.end1365.if.end1372_crit_edge

if.end1365.if.end1372_crit_edge:                  ; preds = %if.end1365
  br label %if.end1372

land.lhs.true1368:                                ; preds = %if.end1365
  %tmp933 = load i64, i64* %length, align 8
  %cmp1369 = icmp ugt i64 %tmp933, 0
  br i1 %cmp1369, label %if.then1371, label %land.lhs.true1368.if.end1372_crit_edge

land.lhs.true1368.if.end1372_crit_edge:           ; preds = %land.lhs.true1368
  br label %if.end1372

if.then1371:                                      ; preds = %land.lhs.true1368
  %tmp934 = load i8*, i8** %memory1323, align 8
  %tmp935 = load i8*, i8** %result, align 8
  %tmp936 = load i64, i64* %length, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %tmp934, i8* %tmp935, i64 %tmp936, i32 1, i1 false)
  br label %if.end1372

if.end1372:                                       ; preds = %land.lhs.true1368.if.end1372_crit_edge, %if.end1365.if.end1372_crit_edge, %if.then1371
  %tmp937 = load i8*, i8** %memory1323, align 8
  store i8* %tmp937, i8** %result, align 8
  br label %if.end1373

if.end1373:                                       ; preds = %cond.end1314.if.end1373_crit_edge, %if.end1372
  br label %for.cond795.backedge

if.end1374:                                       ; preds = %if.end1292
  %tmp938 = load i32, i32* %count797, align 4
  %conv1375 = sext i32 %tmp938 to i64
  %tmp939 = load i64, i64* %length, align 8
  %add1376 = add i64 %tmp939, %conv1375
  store i64 %add1376, i64* %length, align 8
  br label %for.end1377

for.end1377:                                      ; preds = %if.end1374
  br label %if.end1378

if.end1378:                                       ; preds = %for.end1377, %if.end606
  br label %if.end1379

if.end1379:                                       ; preds = %if.end1378, %sw.epilog
  br label %if.end1380

if.end1380:                                       ; preds = %if.end1379, %if.end138
  br label %for.inc1381

for.inc1381:                                      ; preds = %if.end1380
  %tmp940 = load %struct.char_directive*, %struct.char_directive** %dp, align 8
  %dir_end = getelementptr inbounds %struct.char_directive, %struct.char_directive* %tmp940, i32 0, i32 1
  %tmp941 = load i8*, i8** %dir_end, align 8
  store i8* %tmp941, i8** %cp, align 8
  %tmp942 = load i64, i64* %i, align 8
  %inc1382 = add i64 %tmp942, 1
  store i64 %inc1382, i64* %i, align 8
  %tmp943 = load %struct.char_directive*, %struct.char_directive** %dp, align 8
  %incdec.ptr1383 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %tmp943, i32 1
  store %struct.char_directive* %incdec.ptr1383, %struct.char_directive** %dp, align 8
  br label %for.cond

for.end1384:                                      ; preds = %if.then73
  %tmp944 = load i64, i64* %length, align 8
  %call1385 = call i64 @xsum(i64 %tmp944, i64 1) #13
  %tmp945 = load i64, i64* %allocated, align 8
  %cmp1386 = icmp ugt i64 %call1385, %tmp945
  br i1 %cmp1386, label %if.then1388, label %for.end1384.if.end1444_crit_edge

for.end1384.if.end1444_crit_edge:                 ; preds = %for.end1384
  br label %if.end1444

if.then1388:                                      ; preds = %for.end1384
  %tmp946 = load i64, i64* %allocated, align 8
  %cmp1393 = icmp ugt i64 %tmp946, 0
  br i1 %cmp1393, label %cond.true1395, label %cond.false1403

cond.true1395:                                    ; preds = %if.then1388
  %tmp947 = load i64, i64* %allocated, align 8
  %cmp1396 = icmp ule i64 %tmp947, 9223372036854775807
  br i1 %cmp1396, label %cond.true1398, label %cond.false1400

cond.true1398:                                    ; preds = %cond.true1395
  %tmp948 = load i64, i64* %allocated, align 8
  %mul1399 = mul i64 %tmp948, 2
  store i64 %mul1399, i64* %mul1399.reg2mem
  %mul1399.reload = load i64, i64* %mul1399.reg2mem
  store i64 %mul1399.reload, i64* %cond1402.reg2mem1016
  br label %cond.end1401

cond.false1400:                                   ; preds = %cond.true1395
  store i64 -1, i64* %cond1402.reg2mem1016
  br label %cond.end1401

cond.end1401:                                     ; preds = %cond.false1400, %cond.true1398
  %cond1402.reload1017 = load i64, i64* %cond1402.reg2mem1016
  store i64 %cond1402.reload1017, i64* %cond1402.reg2mem
  %cond1402.reload = load i64, i64* %cond1402.reg2mem
  store i64 %cond1402.reload, i64* %cond1405.reg2mem
  br label %cond.end1404

cond.false1403:                                   ; preds = %if.then1388
  store i64 12, i64* %cond1405.reg2mem
  br label %cond.end1404

cond.end1404:                                     ; preds = %cond.false1403, %cond.end1401
  %cond1405.reload = load i64, i64* %cond1405.reg2mem
  store i64 %cond1405.reload, i64* %allocated, align 8
  %tmp949 = load i64, i64* %length, align 8
  %call1406 = call i64 @xsum(i64 %tmp949, i64 1) #13
  %tmp950 = load i64, i64* %allocated, align 8
  %cmp1407 = icmp ugt i64 %call1406, %tmp950
  br i1 %cmp1407, label %if.then1409, label %cond.end1404.if.end1411_crit_edge

cond.end1404.if.end1411_crit_edge:                ; preds = %cond.end1404
  br label %if.end1411

if.then1409:                                      ; preds = %cond.end1404
  %tmp951 = load i64, i64* %length, align 8
  %call1410 = call i64 @xsum(i64 %tmp951, i64 1) #13
  store i64 %call1410, i64* %allocated, align 8
  br label %if.end1411

if.end1411:                                       ; preds = %cond.end1404.if.end1411_crit_edge, %if.then1409
  %tmp952 = load i64, i64* %allocated, align 8
  %cmp1412 = icmp ule i64 %tmp952, -1
  br i1 %cmp1412, label %cond.true1414, label %cond.false1416

cond.true1414:                                    ; preds = %if.end1411
  %tmp953 = load i64, i64* %allocated, align 8
  %mul1415 = mul i64 %tmp953, 1
  store i64 %mul1415, i64* %mul1415.reg2mem
  %mul1415.reload = load i64, i64* %mul1415.reg2mem
  store i64 %mul1415.reload, i64* %cond1418.reg2mem
  br label %cond.end1417

cond.false1416:                                   ; preds = %if.end1411
  store i64 -1, i64* %cond1418.reg2mem
  br label %cond.end1417

cond.end1417:                                     ; preds = %cond.false1416, %cond.true1414
  %cond1418.reload = load i64, i64* %cond1418.reg2mem
  store i64 %cond1418.reload, i64* %memory_size1390, align 8
  %tmp954 = load i64, i64* %memory_size1390, align 8
  %cmp1419 = icmp eq i64 %tmp954, -1
  br i1 %cmp1419, label %if.then1421, label %if.end1422

if.then1421:                                      ; preds = %cond.end1417
  br label %out_of_memory

if.end1422:                                       ; preds = %cond.end1417
  %tmp955 = load i8*, i8** %result, align 8
  %tmp956 = load i8*, i8** %resultbuf.addr, align 8
  %cmp1423 = icmp eq i8* %tmp955, %tmp956
  br i1 %cmp1423, label %if.end1422.if.then1428_crit_edge, label %lor.lhs.false1425

if.end1422.if.then1428_crit_edge:                 ; preds = %if.end1422
  br label %if.then1428

lor.lhs.false1425:                                ; preds = %if.end1422
  %tmp957 = load i8*, i8** %result, align 8
  %cmp1426 = icmp eq i8* %tmp957, null
  br i1 %cmp1426, label %lor.lhs.false1425.if.then1428_crit_edge, label %if.else1430

lor.lhs.false1425.if.then1428_crit_edge:          ; preds = %lor.lhs.false1425
  br label %if.then1428

if.then1428:                                      ; preds = %lor.lhs.false1425.if.then1428_crit_edge, %if.end1422.if.then1428_crit_edge
  %tmp958 = load i64, i64* %memory_size1390, align 8
  %call1429 = call noalias i8* @malloc(i64 %tmp958) #8
  store i8* %call1429, i8** %memory1392, align 8
  br label %if.end1432

if.else1430:                                      ; preds = %lor.lhs.false1425
  %tmp959 = load i8*, i8** %result, align 8
  %tmp960 = load i64, i64* %memory_size1390, align 8
  %call1431 = call i8* @realloc(i8* %tmp959, i64 %tmp960) #8
  store i8* %call1431, i8** %memory1392, align 8
  br label %if.end1432

if.end1432:                                       ; preds = %if.else1430, %if.then1428
  %tmp961 = load i8*, i8** %memory1392, align 8
  %cmp1433 = icmp eq i8* %tmp961, null
  br i1 %cmp1433, label %if.then1435, label %if.end1436

if.then1435:                                      ; preds = %if.end1432
  br label %out_of_memory

if.end1436:                                       ; preds = %if.end1432
  %tmp962 = load i8*, i8** %result, align 8
  %tmp963 = load i8*, i8** %resultbuf.addr, align 8
  %cmp1437 = icmp eq i8* %tmp962, %tmp963
  br i1 %cmp1437, label %land.lhs.true1439, label %if.end1436.if.end1443_crit_edge

if.end1436.if.end1443_crit_edge:                  ; preds = %if.end1436
  br label %if.end1443

land.lhs.true1439:                                ; preds = %if.end1436
  %tmp964 = load i64, i64* %length, align 8
  %cmp1440 = icmp ugt i64 %tmp964, 0
  br i1 %cmp1440, label %if.then1442, label %land.lhs.true1439.if.end1443_crit_edge

land.lhs.true1439.if.end1443_crit_edge:           ; preds = %land.lhs.true1439
  br label %if.end1443

if.then1442:                                      ; preds = %land.lhs.true1439
  %tmp965 = load i8*, i8** %memory1392, align 8
  %tmp966 = load i8*, i8** %result, align 8
  %tmp967 = load i64, i64* %length, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %tmp965, i8* %tmp966, i64 %tmp967, i32 1, i1 false)
  br label %if.end1443

if.end1443:                                       ; preds = %land.lhs.true1439.if.end1443_crit_edge, %if.end1436.if.end1443_crit_edge, %if.then1442
  %tmp968 = load i8*, i8** %memory1392, align 8
  store i8* %tmp968, i8** %result, align 8
  br label %if.end1444

if.end1444:                                       ; preds = %for.end1384.if.end1444_crit_edge, %if.end1443
  %tmp969 = load i64, i64* %length, align 8
  %tmp970 = load i8*, i8** %result, align 8
  %arrayidx1445 = getelementptr inbounds i8, i8* %tmp970, i64 %tmp969
  store i8 0, i8* %arrayidx1445, align 1
  %tmp971 = load i8*, i8** %result, align 8
  %tmp972 = load i8*, i8** %resultbuf.addr, align 8
  %cmp1446 = icmp ne i8* %tmp971, %tmp972
  br i1 %cmp1446, label %land.lhs.true1448, label %if.end1444.if.end1462_crit_edge

if.end1444.if.end1462_crit_edge:                  ; preds = %if.end1444
  br label %if.end1462

land.lhs.true1448:                                ; preds = %if.end1444
  %tmp973 = load i64, i64* %length, align 8
  %add1449 = add i64 %tmp973, 1
  %tmp974 = load i64, i64* %allocated, align 8
  %cmp1450 = icmp ult i64 %add1449, %tmp974
  br i1 %cmp1450, label %if.then1452, label %land.lhs.true1448.if.end1462_crit_edge

land.lhs.true1448.if.end1462_crit_edge:           ; preds = %land.lhs.true1448
  br label %if.end1462

if.then1452:                                      ; preds = %land.lhs.true1448
  %tmp975 = load i8*, i8** %result, align 8
  %tmp976 = load i64, i64* %length, align 8
  %add1455 = add i64 %tmp976, 1
  %mul1456 = mul i64 %add1455, 1
  %call1457 = call i8* @realloc(i8* %tmp975, i64 %mul1456) #8
  store i8* %call1457, i8** %memory1454, align 8
  %tmp977 = load i8*, i8** %memory1454, align 8
  %cmp1458 = icmp ne i8* %tmp977, null
  br i1 %cmp1458, label %if.then1460, label %if.then1452.if.end1461_crit_edge

if.then1452.if.end1461_crit_edge:                 ; preds = %if.then1452
  br label %if.end1461

if.then1460:                                      ; preds = %if.then1452
  %tmp978 = load i8*, i8** %memory1454, align 8
  store i8* %tmp978, i8** %result, align 8
  br label %if.end1461

if.end1461:                                       ; preds = %if.then1452.if.end1461_crit_edge, %if.then1460
  br label %if.end1462

if.end1462:                                       ; preds = %land.lhs.true1448.if.end1462_crit_edge, %if.end1444.if.end1462_crit_edge, %if.end1461
  %tmp979 = load i8*, i8** %buf_malloced, align 8
  %cmp1463 = icmp ne i8* %tmp979, null
  br i1 %cmp1463, label %if.then1465, label %if.end1462.if.end1466_crit_edge

if.end1462.if.end1466_crit_edge:                  ; preds = %if.end1462
  br label %if.end1466

if.then1465:                                      ; preds = %if.end1462
  %tmp980 = load i8*, i8** %buf_malloced, align 8
  call void @free(i8* %tmp980) #8
  br label %if.end1466

if.end1466:                                       ; preds = %if.end1462.if.end1466_crit_edge, %if.then1465
  %dir1467 = getelementptr inbounds %struct.char_directives, %struct.char_directives* %d, i32 0, i32 1
  %tmp981 = load %struct.char_directive*, %struct.char_directive** %dir1467, align 8
  %tmp982 = bitcast %struct.char_directive* %tmp981 to i8*
  call void @free(i8* %tmp982) #8
  %arg1468 = getelementptr inbounds %struct.arguments, %struct.arguments* %a, i32 0, i32 1
  %tmp983 = load %struct.argument*, %struct.argument** %arg1468, align 8
  %tobool1469 = icmp ne %struct.argument* %tmp983, null
  br i1 %tobool1469, label %if.then1470, label %if.end1466.if.end1472_crit_edge

if.end1466.if.end1472_crit_edge:                  ; preds = %if.end1466
  br label %if.end1472

if.then1470:                                      ; preds = %if.end1466
  %arg1471 = getelementptr inbounds %struct.arguments, %struct.arguments* %a, i32 0, i32 1
  %tmp984 = load %struct.argument*, %struct.argument** %arg1471, align 8
  %tmp985 = bitcast %struct.argument* %tmp984 to i8*
  call void @free(i8* %tmp985) #8
  br label %if.end1472

if.end1472:                                       ; preds = %if.end1466.if.end1472_crit_edge, %if.then1470
  %tmp986 = load i64, i64* %length, align 8
  %tmp987 = load i64*, i64** %lengthp.addr, align 8
  store i64 %tmp986, i64* %tmp987, align 8
  %tmp988 = load i8*, i8** %result, align 8
  store i8* %tmp988, i8** %retval
  br label %return

overflow:                                         ; preds = %if.then1300
  %tmp989 = load i8*, i8** %result, align 8
  %tmp990 = load i8*, i8** %resultbuf.addr, align 8
  %cmp1473 = icmp eq i8* %tmp989, %tmp990
  br i1 %cmp1473, label %overflow.if.end1479_crit_edge, label %lor.lhs.false1475

overflow.if.end1479_crit_edge:                    ; preds = %overflow
  br label %if.end1479

lor.lhs.false1475:                                ; preds = %overflow
  %tmp991 = load i8*, i8** %result, align 8
  %cmp1476 = icmp eq i8* %tmp991, null
  br i1 %cmp1476, label %lor.lhs.false1475.if.end1479_crit_edge, label %if.then1478

lor.lhs.false1475.if.end1479_crit_edge:           ; preds = %lor.lhs.false1475
  br label %if.end1479

if.then1478:                                      ; preds = %lor.lhs.false1475
  %tmp992 = load i8*, i8** %result, align 8
  call void @free(i8* %tmp992) #8
  br label %if.end1479

if.end1479:                                       ; preds = %lor.lhs.false1475.if.end1479_crit_edge, %overflow.if.end1479_crit_edge, %if.then1478
  %tmp993 = load i8*, i8** %buf_malloced, align 8
  %cmp1480 = icmp ne i8* %tmp993, null
  br i1 %cmp1480, label %if.then1482, label %if.end1479.if.end1483_crit_edge

if.end1479.if.end1483_crit_edge:                  ; preds = %if.end1479
  br label %if.end1483

if.then1482:                                      ; preds = %if.end1479
  %tmp994 = load i8*, i8** %buf_malloced, align 8
  call void @free(i8* %tmp994) #8
  br label %if.end1483

if.end1483:                                       ; preds = %if.end1479.if.end1483_crit_edge, %if.then1482
  %dir1484 = getelementptr inbounds %struct.char_directives, %struct.char_directives* %d, i32 0, i32 1
  %tmp995 = load %struct.char_directive*, %struct.char_directive** %dir1484, align 8
  %tmp996 = bitcast %struct.char_directive* %tmp995 to i8*
  call void @free(i8* %tmp996) #8
  %arg1485 = getelementptr inbounds %struct.arguments, %struct.arguments* %a, i32 0, i32 1
  %tmp997 = load %struct.argument*, %struct.argument** %arg1485, align 8
  %tobool1486 = icmp ne %struct.argument* %tmp997, null
  br i1 %tobool1486, label %if.then1487, label %if.end1483.if.end1489_crit_edge

if.end1483.if.end1489_crit_edge:                  ; preds = %if.end1483
  br label %if.end1489

if.then1487:                                      ; preds = %if.end1483
  %arg1488 = getelementptr inbounds %struct.arguments, %struct.arguments* %a, i32 0, i32 1
  %tmp998 = load %struct.argument*, %struct.argument** %arg1488, align 8
  %tmp999 = bitcast %struct.argument* %tmp998 to i8*
  call void @free(i8* %tmp999) #8
  br label %if.end1489

if.end1489:                                       ; preds = %if.end1483.if.end1489_crit_edge, %if.then1487
  %call1490 = call i32* @__errno_location() #14
  store i32 75, i32* %call1490, align 4
  store i8* null, i8** %retval
  br label %return

out_of_memory:                                    ; preds = %if.then1435, %if.then1421, %if.then1364, %if.then1350, %if.then1257, %if.then1243, %if.then784, %if.then770, %if.then589, %if.then575, %if.then365, %if.then360, %if.then129, %if.then115, %if.then64, %if.then54
  %tmp1000 = load i8*, i8** %result, align 8
  %tmp1001 = load i8*, i8** %resultbuf.addr, align 8
  %cmp1491 = icmp eq i8* %tmp1000, %tmp1001
  br i1 %cmp1491, label %out_of_memory.if.end1497_crit_edge, label %lor.lhs.false1493

out_of_memory.if.end1497_crit_edge:               ; preds = %out_of_memory
  br label %if.end1497

lor.lhs.false1493:                                ; preds = %out_of_memory
  %tmp1002 = load i8*, i8** %result, align 8
  %cmp1494 = icmp eq i8* %tmp1002, null
  br i1 %cmp1494, label %lor.lhs.false1493.if.end1497_crit_edge, label %if.then1496

lor.lhs.false1493.if.end1497_crit_edge:           ; preds = %lor.lhs.false1493
  br label %if.end1497

if.then1496:                                      ; preds = %lor.lhs.false1493
  %tmp1003 = load i8*, i8** %result, align 8
  call void @free(i8* %tmp1003) #8
  br label %if.end1497

if.end1497:                                       ; preds = %lor.lhs.false1493.if.end1497_crit_edge, %out_of_memory.if.end1497_crit_edge, %if.then1496
  %tmp1004 = load i8*, i8** %buf_malloced, align 8
  %cmp1498 = icmp ne i8* %tmp1004, null
  br i1 %cmp1498, label %if.then1500, label %if.end1497.if.end1501_crit_edge

if.end1497.if.end1501_crit_edge:                  ; preds = %if.end1497
  br label %if.end1501

if.then1500:                                      ; preds = %if.end1497
  %tmp1005 = load i8*, i8** %buf_malloced, align 8
  call void @free(i8* %tmp1005) #8
  br label %if.end1501

if.end1501:                                       ; preds = %if.end1497.if.end1501_crit_edge, %if.then1500
  br label %out_of_memory_1

out_of_memory_1:                                  ; preds = %if.end1501, %if.then19, %if.then15
  %dir1502 = getelementptr inbounds %struct.char_directives, %struct.char_directives* %d, i32 0, i32 1
  %tmp1006 = load %struct.char_directive*, %struct.char_directive** %dir1502, align 8
  %tmp1007 = bitcast %struct.char_directive* %tmp1006 to i8*
  call void @free(i8* %tmp1007) #8
  %arg1503 = getelementptr inbounds %struct.arguments, %struct.arguments* %a, i32 0, i32 1
  %tmp1008 = load %struct.argument*, %struct.argument** %arg1503, align 8
  %tobool1504 = icmp ne %struct.argument* %tmp1008, null
  br i1 %tobool1504, label %if.then1505, label %out_of_memory_1.if.end1507_crit_edge

out_of_memory_1.if.end1507_crit_edge:             ; preds = %out_of_memory_1
  br label %if.end1507

if.then1505:                                      ; preds = %out_of_memory_1
  %arg1506 = getelementptr inbounds %struct.arguments, %struct.arguments* %a, i32 0, i32 1
  %tmp1009 = load %struct.argument*, %struct.argument** %arg1506, align 8
  %tmp1010 = bitcast %struct.argument* %tmp1009 to i8*
  call void @free(i8* %tmp1010) #8
  br label %if.end1507

if.end1507:                                       ; preds = %out_of_memory_1.if.end1507_crit_edge, %if.then1505
  %call1508 = call i32* @__errno_location() #14
  store i32 12, i32* %call1508, align 4
  store i8* null, i8** %retval
  br label %return

return:                                           ; preds = %if.end1507, %if.end1489, %if.end1472, %if.end1290, %if.end6, %if.then
  %tmp1011 = load i8*, i8** %retval
  ret i8* %tmp1011
}

; Function Attrs: nounwind
declare i32 @snprintf(i8*, i64, i8*, ...) #2

; Function Attrs: inlinehint nounwind readonly uwtable
define internal i64 @xsum4(i64 %size1, i64 %size2, i64 %size3, i64 %size4) #11 {
entry:
  %size1.addr = alloca i64, align 8
  %size2.addr = alloca i64, align 8
  %size3.addr = alloca i64, align 8
  %size4.addr = alloca i64, align 8
  %"reg2mem alloca point" = bitcast i32 0 to i32
  store i64 %size1, i64* %size1.addr, align 8
  store i64 %size2, i64* %size2.addr, align 8
  store i64 %size3, i64* %size3.addr, align 8
  store i64 %size4, i64* %size4.addr, align 8
  %tmp = load i64, i64* %size1.addr, align 8
  %tmp1 = load i64, i64* %size2.addr, align 8
  %call = call i64 @xsum(i64 %tmp, i64 %tmp1) #13
  %tmp2 = load i64, i64* %size3.addr, align 8
  %call1 = call i64 @xsum(i64 %call, i64 %tmp2) #13
  %tmp3 = load i64, i64* %size4.addr, align 8
  %call2 = call i64 @xsum(i64 %call1, i64 %tmp3) #13
  ret i64 %call2
}

; Function Attrs: inlinehint nounwind readonly uwtable
define internal i64 @xsum(i64 %size1, i64 %size2) #11 {
entry:
  %size1.addr = alloca i64, align 8
  %size2.addr = alloca i64, align 8
  %sum = alloca i64, align 8
  %tmp4.reg2mem = alloca i64
  %cond.reg2mem = alloca i64
  %"reg2mem alloca point" = bitcast i32 0 to i32
  store i64 %size1, i64* %size1.addr, align 8
  store i64 %size2, i64* %size2.addr, align 8
  %tmp = load i64, i64* %size1.addr, align 8
  %tmp1 = load i64, i64* %size2.addr, align 8
  %add = add i64 %tmp, %tmp1
  store i64 %add, i64* %sum, align 8
  %tmp2 = load i64, i64* %sum, align 8
  %tmp3 = load i64, i64* %size1.addr, align 8
  %cmp = icmp uge i64 %tmp2, %tmp3
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %tmp4 = load i64, i64* %sum, align 8
  store i64 %tmp4, i64* %tmp4.reg2mem
  %tmp4.reload = load i64, i64* %tmp4.reg2mem
  store i64 %tmp4.reload, i64* %cond.reg2mem
  br label %cond.end

cond.false:                                       ; preds = %entry
  store i64 -1, i64* %cond.reg2mem
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond.reload = load i64, i64* %cond.reg2mem
  ret i64 %cond.reload
}

; Function Attrs: nounwind uwtable
define internal i32 @is_infinitel(x86_fp80 %x) #0 {
entry:
  %x.addr = alloca x86_fp80, align 16
  %tmp5.reg2mem = alloca i1
  %cmp1.reg2mem = alloca i1
  %tmp6.reg2mem = alloca i1
  %tmp5.reg2mem7 = alloca i1
  %"reg2mem alloca point" = bitcast i32 0 to i32
  store x86_fp80 %x, x86_fp80* %x.addr, align 16
  %tmp = load x86_fp80, x86_fp80* %x.addr, align 16
  %call = call i32 @rpl_isnanl(x86_fp80 %tmp)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %entry.lor.end_crit_edge, label %lor.rhs

entry.lor.end_crit_edge:                          ; preds = %entry
  store i1 true, i1* %tmp6.reg2mem
  br label %lor.end

lor.rhs:                                          ; preds = %entry
  %tmp1 = load x86_fp80, x86_fp80* %x.addr, align 16
  %tmp2 = load x86_fp80, x86_fp80* %x.addr, align 16
  %add = fadd x86_fp80 %tmp1, %tmp2
  %tmp3 = load x86_fp80, x86_fp80* %x.addr, align 16
  %cmp = fcmp oeq x86_fp80 %add, %tmp3
  br i1 %cmp, label %land.rhs, label %lor.rhs.land.end_crit_edge

lor.rhs.land.end_crit_edge:                       ; preds = %lor.rhs
  store i1 false, i1* %tmp5.reg2mem7
  br label %land.end

land.rhs:                                         ; preds = %lor.rhs
  %tmp4 = load x86_fp80, x86_fp80* %x.addr, align 16
  %cmp1 = fcmp une x86_fp80 %tmp4, 0xK00000000000000000000
  store i1 %cmp1, i1* %cmp1.reg2mem
  %cmp1.reload = load i1, i1* %cmp1.reg2mem
  store i1 %cmp1.reload, i1* %tmp5.reg2mem7
  br label %land.end

land.end:                                         ; preds = %lor.rhs.land.end_crit_edge, %land.rhs
  %tmp5.reload8 = load i1, i1* %tmp5.reg2mem7
  store i1 %tmp5.reload8, i1* %tmp5.reg2mem
  %tmp5.reload = load i1, i1* %tmp5.reg2mem
  store i1 %tmp5.reload, i1* %tmp6.reg2mem
  br label %lor.end

lor.end:                                          ; preds = %entry.lor.end_crit_edge, %land.end
  %tmp6.reload = load i1, i1* %tmp6.reg2mem
  %lor.ext = zext i1 %tmp6.reload to i32
  ret i32 %lor.ext
}

; Function Attrs: inlinehint nounwind readonly uwtable
define internal i64 @xmax(i64 %size1, i64 %size2) #11 {
entry:
  %size1.addr = alloca i64, align 8
  %size2.addr = alloca i64, align 8
  %tmp3.reg2mem = alloca i64
  %tmp2.reg2mem = alloca i64
  %cond.reg2mem = alloca i64
  %"reg2mem alloca point" = bitcast i32 0 to i32
  store i64 %size1, i64* %size1.addr, align 8
  store i64 %size2, i64* %size2.addr, align 8
  %tmp = load i64, i64* %size1.addr, align 8
  %tmp1 = load i64, i64* %size2.addr, align 8
  %cmp = icmp uge i64 %tmp, %tmp1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %tmp2 = load i64, i64* %size1.addr, align 8
  store i64 %tmp2, i64* %tmp2.reg2mem
  %tmp2.reload = load i64, i64* %tmp2.reg2mem
  store i64 %tmp2.reload, i64* %cond.reg2mem
  br label %cond.end

cond.false:                                       ; preds = %entry
  %tmp3 = load i64, i64* %size2.addr, align 8
  store i64 %tmp3, i64* %tmp3.reg2mem
  %tmp3.reload = load i64, i64* %tmp3.reg2mem
  store i64 %tmp3.reload, i64* %cond.reg2mem
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond.reload = load i64, i64* %cond.reg2mem
  ret i64 %cond.reload
}

; Function Attrs: nounwind uwtable
define i32 @rpl_isnanl(x86_fp80 %x) #0 {
entry:
  %retval = alloca i32, align 4
  %x.addr = alloca x86_fp80, align 16
  %m = alloca %union.memory_double, align 16
  %exponent = alloca i32, align 4
  %"reg2mem alloca point" = bitcast i32 0 to i32
  store x86_fp80 %x, x86_fp80* %x.addr, align 16
  %tmp = load x86_fp80, x86_fp80* %x.addr, align 16
  %value = bitcast %union.memory_double* %m to x86_fp80*
  store x86_fp80 %tmp, x86_fp80* %value, align 16
  %word = bitcast %union.memory_double* %m to [4 x i32]*
  %arrayidx = getelementptr inbounds [4 x i32], [4 x i32]* %word, i32 0, i64 2
  %tmp1 = load i32, i32* %arrayidx, align 4
  %shr = lshr i32 %tmp1, 0
  %and = and i32 %shr, 32767
  store i32 %and, i32* %exponent, align 4
  %tmp2 = load i32, i32* %exponent, align 4
  %cmp = icmp eq i32 %tmp2, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %word1 = bitcast %union.memory_double* %m to [4 x i32]*
  %arrayidx2 = getelementptr inbounds [4 x i32], [4 x i32]* %word1, i32 0, i64 1
  %tmp3 = load i32, i32* %arrayidx2, align 4
  %shr3 = lshr i32 %tmp3, 31
  store i32 %shr3, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %tmp4 = load i32, i32* %exponent, align 4
  %cmp4 = icmp eq i32 %tmp4, 32767
  br i1 %cmp4, label %if.then5, label %if.else11

if.then5:                                         ; preds = %if.else
  %word6 = bitcast %union.memory_double* %m to [4 x i32]*
  %arrayidx7 = getelementptr inbounds [4 x i32], [4 x i32]* %word6, i32 0, i64 1
  %tmp5 = load i32, i32* %arrayidx7, align 4
  %xor = xor i32 %tmp5, -2147483648
  %word8 = bitcast %union.memory_double* %m to [4 x i32]*
  %arrayidx9 = getelementptr inbounds [4 x i32], [4 x i32]* %word8, i32 0, i64 0
  %tmp6 = load i32, i32* %arrayidx9, align 4
  %or = or i32 %xor, %tmp6
  %cmp10 = icmp ne i32 %or, 0
  %conv = zext i1 %cmp10 to i32
  store i32 %conv, i32* %retval
  br label %return

if.else11:                                        ; preds = %if.else
  %word12 = bitcast %union.memory_double* %m to [4 x i32]*
  %arrayidx13 = getelementptr inbounds [4 x i32], [4 x i32]* %word12, i32 0, i64 1
  %tmp7 = load i32, i32* %arrayidx13, align 4
  %shr14 = lshr i32 %tmp7, 31
  %xor15 = xor i32 %shr14, 1
  store i32 %xor15, i32* %retval
  br label %return

return:                                           ; preds = %if.else11, %if.then5, %if.then
  %tmp8 = load i32, i32* %retval
  ret i32 %tmp8
}

; Function Attrs: nounwind uwtable
define i32 @printf_fetchargs(%struct.__va_list_tag* %args, %struct.arguments* %a) #0 {
entry:
  %retval = alloca i32, align 4
  %args.addr = alloca %struct.__va_list_tag*, align 8
  %a.addr = alloca %struct.arguments*, align 8
  %i = alloca i64, align 8
  %ap = alloca %struct.argument*, align 8
  %tmp185.reg2mem = alloca i64**
  %tmp183.reg2mem = alloca i64**
  %gp_offset270.reg2mem = alloca i32
  %gp_offset_p269.reg2mem = alloca i32*
  %tmp180.reg2mem = alloca %struct.__va_list_tag*
  %tmp177.reg2mem = alloca i64**
  %tmp175.reg2mem = alloca i64**
  %gp_offset257.reg2mem = alloca i32
  %gp_offset_p256.reg2mem = alloca i32*
  %tmp172.reg2mem = alloca %struct.__va_list_tag*
  %tmp169.reg2mem = alloca i32**
  %tmp167.reg2mem = alloca i32**
  %gp_offset244.reg2mem = alloca i32
  %gp_offset_p243.reg2mem = alloca i32*
  %tmp164.reg2mem = alloca %struct.__va_list_tag*
  %tmp161.reg2mem = alloca i16**
  %tmp159.reg2mem = alloca i16**
  %gp_offset231.reg2mem = alloca i32
  %gp_offset_p230.reg2mem = alloca i32*
  %tmp156.reg2mem = alloca %struct.__va_list_tag*
  %tmp153.reg2mem = alloca i8**
  %tmp151.reg2mem = alloca i8**
  %gp_offset218.reg2mem = alloca i32
  %gp_offset_p217.reg2mem = alloca i32*
  %tmp148.reg2mem = alloca %struct.__va_list_tag*
  %tmp145.reg2mem = alloca i8**
  %tmp143.reg2mem = alloca i8**
  %gp_offset205.reg2mem = alloca i32
  %gp_offset_p204.reg2mem = alloca i32*
  %tmp140.reg2mem = alloca %struct.__va_list_tag*
  %tmp134.reg2mem = alloca i32**
  %tmp132.reg2mem = alloca i32**
  %gp_offset184.reg2mem = alloca i32
  %gp_offset_p183.reg2mem = alloca i32*
  %tmp129.reg2mem = alloca %struct.__va_list_tag*
  %tmp123.reg2mem = alloca i8**
  %tmp121.reg2mem = alloca i8**
  %gp_offset165.reg2mem = alloca i32
  %gp_offset_p164.reg2mem = alloca i32*
  %tmp118.reg2mem = alloca %struct.__va_list_tag*
  %tmp115.reg2mem = alloca i32*
  %tmp113.reg2mem = alloca i32*
  %gp_offset152.reg2mem = alloca i32
  %gp_offset_p151.reg2mem = alloca i32*
  %tmp110.reg2mem = alloca %struct.__va_list_tag*
  %tmp107.reg2mem = alloca i32*
  %tmp105.reg2mem = alloca i32*
  %gp_offset139.reg2mem = alloca i32
  %gp_offset_p138.reg2mem = alloca i32*
  %tmp102.reg2mem = alloca %struct.__va_list_tag*
  %tmp92.reg2mem = alloca double*
  %tmp90.reg2mem = alloca double*
  %fp_offset.reg2mem = alloca i32
  %fp_offset_p.reg2mem = alloca i32*
  %tmp87.reg2mem = alloca %struct.__va_list_tag*
  %tmp84.reg2mem = alloca i64*
  %tmp82.reg2mem = alloca i64*
  %gp_offset111.reg2mem = alloca i32
  %gp_offset_p110.reg2mem = alloca i32*
  %tmp79.reg2mem = alloca %struct.__va_list_tag*
  %tmp76.reg2mem = alloca i64*
  %tmp74.reg2mem = alloca i64*
  %gp_offset98.reg2mem = alloca i32
  %gp_offset_p97.reg2mem = alloca i32*
  %tmp71.reg2mem = alloca %struct.__va_list_tag*
  %tmp68.reg2mem = alloca i64*
  %tmp66.reg2mem = alloca i64*
  %gp_offset85.reg2mem = alloca i32
  %gp_offset_p84.reg2mem = alloca i32*
  %tmp63.reg2mem = alloca %struct.__va_list_tag*
  %tmp60.reg2mem = alloca i64*
  %tmp58.reg2mem = alloca i64*
  %gp_offset72.reg2mem = alloca i32
  %gp_offset_p71.reg2mem = alloca i32*
  %tmp55.reg2mem = alloca %struct.__va_list_tag*
  %tmp52.reg2mem = alloca i32*
  %tmp50.reg2mem = alloca i32*
  %gp_offset59.reg2mem = alloca i32
  %gp_offset_p58.reg2mem = alloca i32*
  %tmp47.reg2mem = alloca %struct.__va_list_tag*
  %tmp44.reg2mem = alloca i32*
  %tmp42.reg2mem = alloca i32*
  %gp_offset46.reg2mem = alloca i32
  %gp_offset_p45.reg2mem = alloca i32*
  %tmp39.reg2mem = alloca %struct.__va_list_tag*
  %tmp36.reg2mem = alloca i32*
  %tmp34.reg2mem = alloca i32*
  %gp_offset32.reg2mem = alloca i32
  %gp_offset_p31.reg2mem = alloca i32*
  %tmp31.reg2mem = alloca %struct.__va_list_tag*
  %tmp28.reg2mem = alloca i32*
  %tmp26.reg2mem = alloca i32*
  %gp_offset18.reg2mem = alloca i32
  %gp_offset_p17.reg2mem = alloca i32*
  %tmp23.reg2mem = alloca %struct.__va_list_tag*
  %tmp20.reg2mem = alloca i32*
  %tmp18.reg2mem = alloca i32*
  %gp_offset4.reg2mem = alloca i32
  %gp_offset_p3.reg2mem = alloca i32*
  %tmp15.reg2mem = alloca %struct.__va_list_tag*
  %tmp12.reg2mem = alloca i32*
  %tmp10.reg2mem = alloca i32*
  %gp_offset.reg2mem = alloca i32
  %gp_offset_p.reg2mem = alloca i32*
  %tmp7.reg2mem = alloca %struct.__va_list_tag*
  %vaarg.addr279.reg2mem = alloca i64**
  %vaarg.addr266.reg2mem = alloca i64**
  %vaarg.addr253.reg2mem = alloca i32**
  %vaarg.addr240.reg2mem = alloca i16**
  %vaarg.addr227.reg2mem = alloca i8**
  %vaarg.addr214.reg2mem = alloca i8**
  %vaarg.addr193.reg2mem = alloca i32**
  %vaarg.addr174.reg2mem = alloca i8**
  %vaarg.addr161.reg2mem = alloca i32*
  %vaarg.addr148.reg2mem = alloca i32*
  %vaarg.addr130.reg2mem = alloca double*
  %vaarg.addr120.reg2mem = alloca i64*
  %vaarg.addr107.reg2mem = alloca i64*
  %vaarg.addr94.reg2mem = alloca i64*
  %vaarg.addr81.reg2mem = alloca i64*
  %vaarg.addr68.reg2mem = alloca i32*
  %vaarg.addr55.reg2mem = alloca i32*
  %vaarg.addr41.reg2mem = alloca i32*
  %vaarg.addr27.reg2mem = alloca i32*
  %vaarg.addr13.reg2mem = alloca i32*
  %vaarg.addr.reg2mem = alloca i32*
  %"reg2mem alloca point" = bitcast i32 0 to i32
  store %struct.__va_list_tag* %args, %struct.__va_list_tag** %args.addr, align 8
  store %struct.arguments* %a, %struct.arguments** %a.addr, align 8
  store i64 0, i64* %i, align 8
  %tmp = load %struct.arguments*, %struct.arguments** %a.addr, align 8
  %arg = getelementptr inbounds %struct.arguments, %struct.arguments* %tmp, i32 0, i32 1
  %tmp1 = load %struct.argument*, %struct.argument** %arg, align 8
  %arrayidx = getelementptr inbounds %struct.argument, %struct.argument* %tmp1, i64 0
  store %struct.argument* %arrayidx, %struct.argument** %ap, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %tmp2 = load i64, i64* %i, align 8
  %tmp3 = load %struct.arguments*, %struct.arguments** %a.addr, align 8
  %count = getelementptr inbounds %struct.arguments, %struct.arguments* %tmp3, i32 0, i32 0
  %tmp4 = load i64, i64* %count, align 8
  %cmp = icmp ult i64 %tmp2, %tmp4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %tmp5 = load %struct.argument*, %struct.argument** %ap, align 8
  %type = getelementptr inbounds %struct.argument, %struct.argument* %tmp5, i32 0, i32 0
  %tmp6 = load i32, i32* %type, align 4
  switch i32 %tmp6, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb2
    i32 3, label %sw.bb16
    i32 4, label %sw.bb30
    i32 5, label %sw.bb44
    i32 6, label %sw.bb57
    i32 7, label %sw.bb70
    i32 8, label %sw.bb83
    i32 9, label %sw.bb96
    i32 10, label %sw.bb109
    i32 11, label %sw.bb122
    i32 12, label %sw.bb132
    i32 13, label %sw.bb137
    i32 14, label %sw.bb150
    i32 15, label %sw.bb163
    i32 16, label %sw.bb182
    i32 17, label %sw.bb203
    i32 18, label %sw.bb216
    i32 19, label %sw.bb229
    i32 20, label %sw.bb242
    i32 21, label %sw.bb255
    i32 22, label %sw.bb268
  ]

sw.bb:                                            ; preds = %for.body
  %tmp7 = load %struct.__va_list_tag*, %struct.__va_list_tag** %args.addr, align 8
  store %struct.__va_list_tag* %tmp7, %struct.__va_list_tag** %tmp7.reg2mem
  %tmp7.reload295 = load %struct.__va_list_tag*, %struct.__va_list_tag** %tmp7.reg2mem
  %gp_offset_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %tmp7.reload295, i32 0, i32 0
  store i32* %gp_offset_p, i32** %gp_offset_p.reg2mem
  %gp_offset_p.reload293 = load i32*, i32** %gp_offset_p.reg2mem
  %gp_offset = load i32, i32* %gp_offset_p.reload293
  store i32 %gp_offset, i32* %gp_offset.reg2mem
  %gp_offset.reload292 = load i32, i32* %gp_offset.reg2mem
  %fits_in_gp = icmp ule i32 %gp_offset.reload292, 40
  br i1 %fits_in_gp, label %vaarg.in_reg, label %vaarg.in_mem

vaarg.in_reg:                                     ; preds = %sw.bb
  %tmp7.reload294 = load %struct.__va_list_tag*, %struct.__va_list_tag** %tmp7.reg2mem
  %tmp8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %tmp7.reload294, i32 0, i32 3
  %reg_save_area = load i8*, i8** %tmp8
  %gp_offset.reload291 = load i32, i32* %gp_offset.reg2mem
  %tmp9 = getelementptr i8, i8* %reg_save_area, i32 %gp_offset.reload291
  %tmp10 = bitcast i8* %tmp9 to i32*
  store i32* %tmp10, i32** %tmp10.reg2mem
  %gp_offset.reload = load i32, i32* %gp_offset.reg2mem
  %tmp11 = add i32 %gp_offset.reload, 8
  %gp_offset_p.reload = load i32*, i32** %gp_offset_p.reg2mem
  store i32 %tmp11, i32* %gp_offset_p.reload
  %tmp10.reload = load i32*, i32** %tmp10.reg2mem
  store i32* %tmp10.reload, i32** %vaarg.addr.reg2mem
  br label %vaarg.end

vaarg.in_mem:                                     ; preds = %sw.bb
  %tmp7.reload = load %struct.__va_list_tag*, %struct.__va_list_tag** %tmp7.reg2mem
  %overflow_arg_area_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %tmp7.reload, i32 0, i32 2
  %overflow_arg_area = load i8*, i8** %overflow_arg_area_p
  %tmp12 = bitcast i8* %overflow_arg_area to i32*
  store i32* %tmp12, i32** %tmp12.reg2mem
  %overflow_arg_area.next = getelementptr i8, i8* %overflow_arg_area, i32 8
  store i8* %overflow_arg_area.next, i8** %overflow_arg_area_p
  %tmp12.reload = load i32*, i32** %tmp12.reg2mem
  store i32* %tmp12.reload, i32** %vaarg.addr.reg2mem
  br label %vaarg.end

vaarg.end:                                        ; preds = %vaarg.in_mem, %vaarg.in_reg
  %vaarg.addr.reload = load i32*, i32** %vaarg.addr.reg2mem
  %tmp13 = load i32, i32* %vaarg.addr.reload
  %conv = trunc i32 %tmp13 to i8
  %tmp14 = load %struct.argument*, %struct.argument** %ap, align 8
  %a1 = getelementptr inbounds %struct.argument, %struct.argument* %tmp14, i32 0, i32 1
  %a_schar = bitcast %union.anon.17* %a1 to i8*
  store i8 %conv, i8* %a_schar, align 1
  br label %sw.epilog

sw.bb2:                                           ; preds = %for.body
  %tmp15 = load %struct.__va_list_tag*, %struct.__va_list_tag** %args.addr, align 8
  store %struct.__va_list_tag* %tmp15, %struct.__va_list_tag** %tmp15.reg2mem
  %tmp15.reload290 = load %struct.__va_list_tag*, %struct.__va_list_tag** %tmp15.reg2mem
  %gp_offset_p3 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %tmp15.reload290, i32 0, i32 0
  store i32* %gp_offset_p3, i32** %gp_offset_p3.reg2mem
  %gp_offset_p3.reload288 = load i32*, i32** %gp_offset_p3.reg2mem
  %gp_offset4 = load i32, i32* %gp_offset_p3.reload288
  store i32 %gp_offset4, i32* %gp_offset4.reg2mem
  %gp_offset4.reload287 = load i32, i32* %gp_offset4.reg2mem
  %fits_in_gp5 = icmp ule i32 %gp_offset4.reload287, 40
  br i1 %fits_in_gp5, label %vaarg.in_reg6, label %vaarg.in_mem8

vaarg.in_reg6:                                    ; preds = %sw.bb2
  %tmp15.reload289 = load %struct.__va_list_tag*, %struct.__va_list_tag** %tmp15.reg2mem
  %tmp16 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %tmp15.reload289, i32 0, i32 3
  %reg_save_area7 = load i8*, i8** %tmp16
  %gp_offset4.reload286 = load i32, i32* %gp_offset4.reg2mem
  %tmp17 = getelementptr i8, i8* %reg_save_area7, i32 %gp_offset4.reload286
  %tmp18 = bitcast i8* %tmp17 to i32*
  store i32* %tmp18, i32** %tmp18.reg2mem
  %gp_offset4.reload = load i32, i32* %gp_offset4.reg2mem
  %tmp19 = add i32 %gp_offset4.reload, 8
  %gp_offset_p3.reload = load i32*, i32** %gp_offset_p3.reg2mem
  store i32 %tmp19, i32* %gp_offset_p3.reload
  %tmp18.reload = load i32*, i32** %tmp18.reg2mem
  store i32* %tmp18.reload, i32** %vaarg.addr13.reg2mem
  br label %vaarg.end12

vaarg.in_mem8:                                    ; preds = %sw.bb2
  %tmp15.reload = load %struct.__va_list_tag*, %struct.__va_list_tag** %tmp15.reg2mem
  %overflow_arg_area_p9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %tmp15.reload, i32 0, i32 2
  %overflow_arg_area10 = load i8*, i8** %overflow_arg_area_p9
  %tmp20 = bitcast i8* %overflow_arg_area10 to i32*
  store i32* %tmp20, i32** %tmp20.reg2mem
  %overflow_arg_area.next11 = getelementptr i8, i8* %overflow_arg_area10, i32 8
  store i8* %overflow_arg_area.next11, i8** %overflow_arg_area_p9
  %tmp20.reload = load i32*, i32** %tmp20.reg2mem
  store i32* %tmp20.reload, i32** %vaarg.addr13.reg2mem
  br label %vaarg.end12

vaarg.end12:                                      ; preds = %vaarg.in_mem8, %vaarg.in_reg6
  %vaarg.addr13.reload = load i32*, i32** %vaarg.addr13.reg2mem
  %tmp21 = load i32, i32* %vaarg.addr13.reload
  %conv14 = trunc i32 %tmp21 to i8
  %tmp22 = load %struct.argument*, %struct.argument** %ap, align 8
  %a15 = getelementptr inbounds %struct.argument, %struct.argument* %tmp22, i32 0, i32 1
  %a_uchar = bitcast %union.anon.17* %a15 to i8*
  store i8 %conv14, i8* %a_uchar, align 1
  br label %sw.epilog

sw.bb16:                                          ; preds = %for.body
  %tmp23 = load %struct.__va_list_tag*, %struct.__va_list_tag** %args.addr, align 8
  store %struct.__va_list_tag* %tmp23, %struct.__va_list_tag** %tmp23.reg2mem
  %tmp23.reload285 = load %struct.__va_list_tag*, %struct.__va_list_tag** %tmp23.reg2mem
  %gp_offset_p17 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %tmp23.reload285, i32 0, i32 0
  store i32* %gp_offset_p17, i32** %gp_offset_p17.reg2mem
  %gp_offset_p17.reload283 = load i32*, i32** %gp_offset_p17.reg2mem
  %gp_offset18 = load i32, i32* %gp_offset_p17.reload283
  store i32 %gp_offset18, i32* %gp_offset18.reg2mem
  %gp_offset18.reload282 = load i32, i32* %gp_offset18.reg2mem
  %fits_in_gp19 = icmp ule i32 %gp_offset18.reload282, 40
  br i1 %fits_in_gp19, label %vaarg.in_reg20, label %vaarg.in_mem22

vaarg.in_reg20:                                   ; preds = %sw.bb16
  %tmp23.reload284 = load %struct.__va_list_tag*, %struct.__va_list_tag** %tmp23.reg2mem
  %tmp24 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %tmp23.reload284, i32 0, i32 3
  %reg_save_area21 = load i8*, i8** %tmp24
  %gp_offset18.reload281 = load i32, i32* %gp_offset18.reg2mem
  %tmp25 = getelementptr i8, i8* %reg_save_area21, i32 %gp_offset18.reload281
  %tmp26 = bitcast i8* %tmp25 to i32*
  store i32* %tmp26, i32** %tmp26.reg2mem
  %gp_offset18.reload = load i32, i32* %gp_offset18.reg2mem
  %tmp27 = add i32 %gp_offset18.reload, 8
  %gp_offset_p17.reload = load i32*, i32** %gp_offset_p17.reg2mem
  store i32 %tmp27, i32* %gp_offset_p17.reload
  %tmp26.reload = load i32*, i32** %tmp26.reg2mem
  store i32* %tmp26.reload, i32** %vaarg.addr27.reg2mem
  br label %vaarg.end26

vaarg.in_mem22:                                   ; preds = %sw.bb16
  %tmp23.reload = load %struct.__va_list_tag*, %struct.__va_list_tag** %tmp23.reg2mem
  %overflow_arg_area_p23 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %tmp23.reload, i32 0, i32 2
  %overflow_arg_area24 = load i8*, i8** %overflow_arg_area_p23
  %tmp28 = bitcast i8* %overflow_arg_area24 to i32*
  store i32* %tmp28, i32** %tmp28.reg2mem
  %overflow_arg_area.next25 = getelementptr i8, i8* %overflow_arg_area24, i32 8
  store i8* %overflow_arg_area.next25, i8** %overflow_arg_area_p23
  %tmp28.reload = load i32*, i32** %tmp28.reg2mem
  store i32* %tmp28.reload, i32** %vaarg.addr27.reg2mem
  br label %vaarg.end26

vaarg.end26:                                      ; preds = %vaarg.in_mem22, %vaarg.in_reg20
  %vaarg.addr27.reload = load i32*, i32** %vaarg.addr27.reg2mem
  %tmp29 = load i32, i32* %vaarg.addr27.reload
  %conv28 = trunc i32 %tmp29 to i16
  %tmp30 = load %struct.argument*, %struct.argument** %ap, align 8
  %a29 = getelementptr inbounds %struct.argument, %struct.argument* %tmp30, i32 0, i32 1
  %a_short = bitcast %union.anon.17* %a29 to i16*
  store i16 %conv28, i16* %a_short, align 2
  br label %sw.epilog

sw.bb30:                                          ; preds = %for.body
  %tmp31 = load %struct.__va_list_tag*, %struct.__va_list_tag** %args.addr, align 8
  store %struct.__va_list_tag* %tmp31, %struct.__va_list_tag** %tmp31.reg2mem
  %tmp31.reload280 = load %struct.__va_list_tag*, %struct.__va_list_tag** %tmp31.reg2mem
  %gp_offset_p31 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %tmp31.reload280, i32 0, i32 0
  store i32* %gp_offset_p31, i32** %gp_offset_p31.reg2mem
  %gp_offset_p31.reload278 = load i32*, i32** %gp_offset_p31.reg2mem
  %gp_offset32 = load i32, i32* %gp_offset_p31.reload278
  store i32 %gp_offset32, i32* %gp_offset32.reg2mem
  %gp_offset32.reload277 = load i32, i32* %gp_offset32.reg2mem
  %fits_in_gp33 = icmp ule i32 %gp_offset32.reload277, 40
  br i1 %fits_in_gp33, label %vaarg.in_reg34, label %vaarg.in_mem36

vaarg.in_reg34:                                   ; preds = %sw.bb30
  %tmp31.reload279 = load %struct.__va_list_tag*, %struct.__va_list_tag** %tmp31.reg2mem
  %tmp32 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %tmp31.reload279, i32 0, i32 3
  %reg_save_area35 = load i8*, i8** %tmp32
  %gp_offset32.reload276 = load i32, i32* %gp_offset32.reg2mem
  %tmp33 = getelementptr i8, i8* %reg_save_area35, i32 %gp_offset32.reload276
  %tmp34 = bitcast i8* %tmp33 to i32*
  store i32* %tmp34, i32** %tmp34.reg2mem
  %gp_offset32.reload = load i32, i32* %gp_offset32.reg2mem
  %tmp35 = add i32 %gp_offset32.reload, 8
  %gp_offset_p31.reload = load i32*, i32** %gp_offset_p31.reg2mem
  store i32 %tmp35, i32* %gp_offset_p31.reload
  %tmp34.reload = load i32*, i32** %tmp34.reg2mem
  store i32* %tmp34.reload, i32** %vaarg.addr41.reg2mem
  br label %vaarg.end40

vaarg.in_mem36:                                   ; preds = %sw.bb30
  %tmp31.reload = load %struct.__va_list_tag*, %struct.__va_list_tag** %tmp31.reg2mem
  %overflow_arg_area_p37 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %tmp31.reload, i32 0, i32 2
  %overflow_arg_area38 = load i8*, i8** %overflow_arg_area_p37
  %tmp36 = bitcast i8* %overflow_arg_area38 to i32*
  store i32* %tmp36, i32** %tmp36.reg2mem
  %overflow_arg_area.next39 = getelementptr i8, i8* %overflow_arg_area38, i32 8
  store i8* %overflow_arg_area.next39, i8** %overflow_arg_area_p37
  %tmp36.reload = load i32*, i32** %tmp36.reg2mem
  store i32* %tmp36.reload, i32** %vaarg.addr41.reg2mem
  br label %vaarg.end40

vaarg.end40:                                      ; preds = %vaarg.in_mem36, %vaarg.in_reg34
  %vaarg.addr41.reload = load i32*, i32** %vaarg.addr41.reg2mem
  %tmp37 = load i32, i32* %vaarg.addr41.reload
  %conv42 = trunc i32 %tmp37 to i16
  %tmp38 = load %struct.argument*, %struct.argument** %ap, align 8
  %a43 = getelementptr inbounds %struct.argument, %struct.argument* %tmp38, i32 0, i32 1
  %a_ushort = bitcast %union.anon.17* %a43 to i16*
  store i16 %conv42, i16* %a_ushort, align 2
  br label %sw.epilog

sw.bb44:                                          ; preds = %for.body
  %tmp39 = load %struct.__va_list_tag*, %struct.__va_list_tag** %args.addr, align 8
  store %struct.__va_list_tag* %tmp39, %struct.__va_list_tag** %tmp39.reg2mem
  %tmp39.reload275 = load %struct.__va_list_tag*, %struct.__va_list_tag** %tmp39.reg2mem
  %gp_offset_p45 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %tmp39.reload275, i32 0, i32 0
  store i32* %gp_offset_p45, i32** %gp_offset_p45.reg2mem
  %gp_offset_p45.reload273 = load i32*, i32** %gp_offset_p45.reg2mem
  %gp_offset46 = load i32, i32* %gp_offset_p45.reload273
  store i32 %gp_offset46, i32* %gp_offset46.reg2mem
  %gp_offset46.reload272 = load i32, i32* %gp_offset46.reg2mem
  %fits_in_gp47 = icmp ule i32 %gp_offset46.reload272, 40
  br i1 %fits_in_gp47, label %vaarg.in_reg48, label %vaarg.in_mem50

vaarg.in_reg48:                                   ; preds = %sw.bb44
  %tmp39.reload274 = load %struct.__va_list_tag*, %struct.__va_list_tag** %tmp39.reg2mem
  %tmp40 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %tmp39.reload274, i32 0, i32 3
  %reg_save_area49 = load i8*, i8** %tmp40
  %gp_offset46.reload271 = load i32, i32* %gp_offset46.reg2mem
  %tmp41 = getelementptr i8, i8* %reg_save_area49, i32 %gp_offset46.reload271
  %tmp42 = bitcast i8* %tmp41 to i32*
  store i32* %tmp42, i32** %tmp42.reg2mem
  %gp_offset46.reload = load i32, i32* %gp_offset46.reg2mem
  %tmp43 = add i32 %gp_offset46.reload, 8
  %gp_offset_p45.reload = load i32*, i32** %gp_offset_p45.reg2mem
  store i32 %tmp43, i32* %gp_offset_p45.reload
  %tmp42.reload = load i32*, i32** %tmp42.reg2mem
  store i32* %tmp42.reload, i32** %vaarg.addr55.reg2mem
  br label %vaarg.end54

vaarg.in_mem50:                                   ; preds = %sw.bb44
  %tmp39.reload = load %struct.__va_list_tag*, %struct.__va_list_tag** %tmp39.reg2mem
  %overflow_arg_area_p51 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %tmp39.reload, i32 0, i32 2
  %overflow_arg_area52 = load i8*, i8** %overflow_arg_area_p51
  %tmp44 = bitcast i8* %overflow_arg_area52 to i32*
  store i32* %tmp44, i32** %tmp44.reg2mem
  %overflow_arg_area.next53 = getelementptr i8, i8* %overflow_arg_area52, i32 8
  store i8* %overflow_arg_area.next53, i8** %overflow_arg_area_p51
  %tmp44.reload = load i32*, i32** %tmp44.reg2mem
  store i32* %tmp44.reload, i32** %vaarg.addr55.reg2mem
  br label %vaarg.end54

vaarg.end54:                                      ; preds = %vaarg.in_mem50, %vaarg.in_reg48
  %vaarg.addr55.reload = load i32*, i32** %vaarg.addr55.reg2mem
  %tmp45 = load i32, i32* %vaarg.addr55.reload
  %tmp46 = load %struct.argument*, %struct.argument** %ap, align 8
  %a56 = getelementptr inbounds %struct.argument, %struct.argument* %tmp46, i32 0, i32 1
  %a_int = bitcast %union.anon.17* %a56 to i32*
  store i32 %tmp45, i32* %a_int, align 4
  br label %sw.epilog

sw.bb57:                                          ; preds = %for.body
  %tmp47 = load %struct.__va_list_tag*, %struct.__va_list_tag** %args.addr, align 8
  store %struct.__va_list_tag* %tmp47, %struct.__va_list_tag** %tmp47.reg2mem
  %tmp47.reload270 = load %struct.__va_list_tag*, %struct.__va_list_tag** %tmp47.reg2mem
  %gp_offset_p58 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %tmp47.reload270, i32 0, i32 0
  store i32* %gp_offset_p58, i32** %gp_offset_p58.reg2mem
  %gp_offset_p58.reload268 = load i32*, i32** %gp_offset_p58.reg2mem
  %gp_offset59 = load i32, i32* %gp_offset_p58.reload268
  store i32 %gp_offset59, i32* %gp_offset59.reg2mem
  %gp_offset59.reload267 = load i32, i32* %gp_offset59.reg2mem
  %fits_in_gp60 = icmp ule i32 %gp_offset59.reload267, 40
  br i1 %fits_in_gp60, label %vaarg.in_reg61, label %vaarg.in_mem63

vaarg.in_reg61:                                   ; preds = %sw.bb57
  %tmp47.reload269 = load %struct.__va_list_tag*, %struct.__va_list_tag** %tmp47.reg2mem
  %tmp48 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %tmp47.reload269, i32 0, i32 3
  %reg_save_area62 = load i8*, i8** %tmp48
  %gp_offset59.reload266 = load i32, i32* %gp_offset59.reg2mem
  %tmp49 = getelementptr i8, i8* %reg_save_area62, i32 %gp_offset59.reload266
  %tmp50 = bitcast i8* %tmp49 to i32*
  store i32* %tmp50, i32** %tmp50.reg2mem
  %gp_offset59.reload = load i32, i32* %gp_offset59.reg2mem
  %tmp51 = add i32 %gp_offset59.reload, 8
  %gp_offset_p58.reload = load i32*, i32** %gp_offset_p58.reg2mem
  store i32 %tmp51, i32* %gp_offset_p58.reload
  %tmp50.reload = load i32*, i32** %tmp50.reg2mem
  store i32* %tmp50.reload, i32** %vaarg.addr68.reg2mem
  br label %vaarg.end67

vaarg.in_mem63:                                   ; preds = %sw.bb57
  %tmp47.reload = load %struct.__va_list_tag*, %struct.__va_list_tag** %tmp47.reg2mem
  %overflow_arg_area_p64 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %tmp47.reload, i32 0, i32 2
  %overflow_arg_area65 = load i8*, i8** %overflow_arg_area_p64
  %tmp52 = bitcast i8* %overflow_arg_area65 to i32*
  store i32* %tmp52, i32** %tmp52.reg2mem
  %overflow_arg_area.next66 = getelementptr i8, i8* %overflow_arg_area65, i32 8
  store i8* %overflow_arg_area.next66, i8** %overflow_arg_area_p64
  %tmp52.reload = load i32*, i32** %tmp52.reg2mem
  store i32* %tmp52.reload, i32** %vaarg.addr68.reg2mem
  br label %vaarg.end67

vaarg.end67:                                      ; preds = %vaarg.in_mem63, %vaarg.in_reg61
  %vaarg.addr68.reload = load i32*, i32** %vaarg.addr68.reg2mem
  %tmp53 = load i32, i32* %vaarg.addr68.reload
  %tmp54 = load %struct.argument*, %struct.argument** %ap, align 8
  %a69 = getelementptr inbounds %struct.argument, %struct.argument* %tmp54, i32 0, i32 1
  %a_uint = bitcast %union.anon.17* %a69 to i32*
  store i32 %tmp53, i32* %a_uint, align 4
  br label %sw.epilog

sw.bb70:                                          ; preds = %for.body
  %tmp55 = load %struct.__va_list_tag*, %struct.__va_list_tag** %args.addr, align 8
  store %struct.__va_list_tag* %tmp55, %struct.__va_list_tag** %tmp55.reg2mem
  %tmp55.reload265 = load %struct.__va_list_tag*, %struct.__va_list_tag** %tmp55.reg2mem
  %gp_offset_p71 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %tmp55.reload265, i32 0, i32 0
  store i32* %gp_offset_p71, i32** %gp_offset_p71.reg2mem
  %gp_offset_p71.reload263 = load i32*, i32** %gp_offset_p71.reg2mem
  %gp_offset72 = load i32, i32* %gp_offset_p71.reload263
  store i32 %gp_offset72, i32* %gp_offset72.reg2mem
  %gp_offset72.reload262 = load i32, i32* %gp_offset72.reg2mem
  %fits_in_gp73 = icmp ule i32 %gp_offset72.reload262, 40
  br i1 %fits_in_gp73, label %vaarg.in_reg74, label %vaarg.in_mem76

vaarg.in_reg74:                                   ; preds = %sw.bb70
  %tmp55.reload264 = load %struct.__va_list_tag*, %struct.__va_list_tag** %tmp55.reg2mem
  %tmp56 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %tmp55.reload264, i32 0, i32 3
  %reg_save_area75 = load i8*, i8** %tmp56
  %gp_offset72.reload261 = load i32, i32* %gp_offset72.reg2mem
  %tmp57 = getelementptr i8, i8* %reg_save_area75, i32 %gp_offset72.reload261
  %tmp58 = bitcast i8* %tmp57 to i64*
  store i64* %tmp58, i64** %tmp58.reg2mem
  %gp_offset72.reload = load i32, i32* %gp_offset72.reg2mem
  %tmp59 = add i32 %gp_offset72.reload, 8
  %gp_offset_p71.reload = load i32*, i32** %gp_offset_p71.reg2mem
  store i32 %tmp59, i32* %gp_offset_p71.reload
  %tmp58.reload = load i64*, i64** %tmp58.reg2mem
  store i64* %tmp58.reload, i64** %vaarg.addr81.reg2mem
  br label %vaarg.end80

vaarg.in_mem76:                                   ; preds = %sw.bb70
  %tmp55.reload = load %struct.__va_list_tag*, %struct.__va_list_tag** %tmp55.reg2mem
  %overflow_arg_area_p77 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %tmp55.reload, i32 0, i32 2
  %overflow_arg_area78 = load i8*, i8** %overflow_arg_area_p77
  %tmp60 = bitcast i8* %overflow_arg_area78 to i64*
  store i64* %tmp60, i64** %tmp60.reg2mem
  %overflow_arg_area.next79 = getelementptr i8, i8* %overflow_arg_area78, i32 8
  store i8* %overflow_arg_area.next79, i8** %overflow_arg_area_p77
  %tmp60.reload = load i64*, i64** %tmp60.reg2mem
  store i64* %tmp60.reload, i64** %vaarg.addr81.reg2mem
  br label %vaarg.end80

vaarg.end80:                                      ; preds = %vaarg.in_mem76, %vaarg.in_reg74
  %vaarg.addr81.reload = load i64*, i64** %vaarg.addr81.reg2mem
  %tmp61 = load i64, i64* %vaarg.addr81.reload
  %tmp62 = load %struct.argument*, %struct.argument** %ap, align 8
  %a82 = getelementptr inbounds %struct.argument, %struct.argument* %tmp62, i32 0, i32 1
  %a_longint = bitcast %union.anon.17* %a82 to i64*
  store i64 %tmp61, i64* %a_longint, align 8
  br label %sw.epilog

sw.bb83:                                          ; preds = %for.body
  %tmp63 = load %struct.__va_list_tag*, %struct.__va_list_tag** %args.addr, align 8
  store %struct.__va_list_tag* %tmp63, %struct.__va_list_tag** %tmp63.reg2mem
  %tmp63.reload260 = load %struct.__va_list_tag*, %struct.__va_list_tag** %tmp63.reg2mem
  %gp_offset_p84 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %tmp63.reload260, i32 0, i32 0
  store i32* %gp_offset_p84, i32** %gp_offset_p84.reg2mem
  %gp_offset_p84.reload258 = load i32*, i32** %gp_offset_p84.reg2mem
  %gp_offset85 = load i32, i32* %gp_offset_p84.reload258
  store i32 %gp_offset85, i32* %gp_offset85.reg2mem
  %gp_offset85.reload257 = load i32, i32* %gp_offset85.reg2mem
  %fits_in_gp86 = icmp ule i32 %gp_offset85.reload257, 40
  br i1 %fits_in_gp86, label %vaarg.in_reg87, label %vaarg.in_mem89

vaarg.in_reg87:                                   ; preds = %sw.bb83
  %tmp63.reload259 = load %struct.__va_list_tag*, %struct.__va_list_tag** %tmp63.reg2mem
  %tmp64 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %tmp63.reload259, i32 0, i32 3
  %reg_save_area88 = load i8*, i8** %tmp64
  %gp_offset85.reload256 = load i32, i32* %gp_offset85.reg2mem
  %tmp65 = getelementptr i8, i8* %reg_save_area88, i32 %gp_offset85.reload256
  %tmp66 = bitcast i8* %tmp65 to i64*
  store i64* %tmp66, i64** %tmp66.reg2mem
  %gp_offset85.reload = load i32, i32* %gp_offset85.reg2mem
  %tmp67 = add i32 %gp_offset85.reload, 8
  %gp_offset_p84.reload = load i32*, i32** %gp_offset_p84.reg2mem
  store i32 %tmp67, i32* %gp_offset_p84.reload
  %tmp66.reload = load i64*, i64** %tmp66.reg2mem
  store i64* %tmp66.reload, i64** %vaarg.addr94.reg2mem
  br label %vaarg.end93

vaarg.in_mem89:                                   ; preds = %sw.bb83
  %tmp63.reload = load %struct.__va_list_tag*, %struct.__va_list_tag** %tmp63.reg2mem
  %overflow_arg_area_p90 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %tmp63.reload, i32 0, i32 2
  %overflow_arg_area91 = load i8*, i8** %overflow_arg_area_p90
  %tmp68 = bitcast i8* %overflow_arg_area91 to i64*
  store i64* %tmp68, i64** %tmp68.reg2mem
  %overflow_arg_area.next92 = getelementptr i8, i8* %overflow_arg_area91, i32 8
  store i8* %overflow_arg_area.next92, i8** %overflow_arg_area_p90
  %tmp68.reload = load i64*, i64** %tmp68.reg2mem
  store i64* %tmp68.reload, i64** %vaarg.addr94.reg2mem
  br label %vaarg.end93

vaarg.end93:                                      ; preds = %vaarg.in_mem89, %vaarg.in_reg87
  %vaarg.addr94.reload = load i64*, i64** %vaarg.addr94.reg2mem
  %tmp69 = load i64, i64* %vaarg.addr94.reload
  %tmp70 = load %struct.argument*, %struct.argument** %ap, align 8
  %a95 = getelementptr inbounds %struct.argument, %struct.argument* %tmp70, i32 0, i32 1
  %a_ulongint = bitcast %union.anon.17* %a95 to i64*
  store i64 %tmp69, i64* %a_ulongint, align 8
  br label %sw.epilog

sw.bb96:                                          ; preds = %for.body
  %tmp71 = load %struct.__va_list_tag*, %struct.__va_list_tag** %args.addr, align 8
  store %struct.__va_list_tag* %tmp71, %struct.__va_list_tag** %tmp71.reg2mem
  %tmp71.reload255 = load %struct.__va_list_tag*, %struct.__va_list_tag** %tmp71.reg2mem
  %gp_offset_p97 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %tmp71.reload255, i32 0, i32 0
  store i32* %gp_offset_p97, i32** %gp_offset_p97.reg2mem
  %gp_offset_p97.reload253 = load i32*, i32** %gp_offset_p97.reg2mem
  %gp_offset98 = load i32, i32* %gp_offset_p97.reload253
  store i32 %gp_offset98, i32* %gp_offset98.reg2mem
  %gp_offset98.reload252 = load i32, i32* %gp_offset98.reg2mem
  %fits_in_gp99 = icmp ule i32 %gp_offset98.reload252, 40
  br i1 %fits_in_gp99, label %vaarg.in_reg100, label %vaarg.in_mem102

vaarg.in_reg100:                                  ; preds = %sw.bb96
  %tmp71.reload254 = load %struct.__va_list_tag*, %struct.__va_list_tag** %tmp71.reg2mem
  %tmp72 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %tmp71.reload254, i32 0, i32 3
  %reg_save_area101 = load i8*, i8** %tmp72
  %gp_offset98.reload251 = load i32, i32* %gp_offset98.reg2mem
  %tmp73 = getelementptr i8, i8* %reg_save_area101, i32 %gp_offset98.reload251
  %tmp74 = bitcast i8* %tmp73 to i64*
  store i64* %tmp74, i64** %tmp74.reg2mem
  %gp_offset98.reload = load i32, i32* %gp_offset98.reg2mem
  %tmp75 = add i32 %gp_offset98.reload, 8
  %gp_offset_p97.reload = load i32*, i32** %gp_offset_p97.reg2mem
  store i32 %tmp75, i32* %gp_offset_p97.reload
  %tmp74.reload = load i64*, i64** %tmp74.reg2mem
  store i64* %tmp74.reload, i64** %vaarg.addr107.reg2mem
  br label %vaarg.end106

vaarg.in_mem102:                                  ; preds = %sw.bb96
  %tmp71.reload = load %struct.__va_list_tag*, %struct.__va_list_tag** %tmp71.reg2mem
  %overflow_arg_area_p103 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %tmp71.reload, i32 0, i32 2
  %overflow_arg_area104 = load i8*, i8** %overflow_arg_area_p103
  %tmp76 = bitcast i8* %overflow_arg_area104 to i64*
  store i64* %tmp76, i64** %tmp76.reg2mem
  %overflow_arg_area.next105 = getelementptr i8, i8* %overflow_arg_area104, i32 8
  store i8* %overflow_arg_area.next105, i8** %overflow_arg_area_p103
  %tmp76.reload = load i64*, i64** %tmp76.reg2mem
  store i64* %tmp76.reload, i64** %vaarg.addr107.reg2mem
  br label %vaarg.end106

vaarg.end106:                                     ; preds = %vaarg.in_mem102, %vaarg.in_reg100
  %vaarg.addr107.reload = load i64*, i64** %vaarg.addr107.reg2mem
  %tmp77 = load i64, i64* %vaarg.addr107.reload
  %tmp78 = load %struct.argument*, %struct.argument** %ap, align 8
  %a108 = getelementptr inbounds %struct.argument, %struct.argument* %tmp78, i32 0, i32 1
  %a_longlongint = bitcast %union.anon.17* %a108 to i64*
  store i64 %tmp77, i64* %a_longlongint, align 8
  br label %sw.epilog

sw.bb109:                                         ; preds = %for.body
  %tmp79 = load %struct.__va_list_tag*, %struct.__va_list_tag** %args.addr, align 8
  store %struct.__va_list_tag* %tmp79, %struct.__va_list_tag** %tmp79.reg2mem
  %tmp79.reload250 = load %struct.__va_list_tag*, %struct.__va_list_tag** %tmp79.reg2mem
  %gp_offset_p110 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %tmp79.reload250, i32 0, i32 0
  store i32* %gp_offset_p110, i32** %gp_offset_p110.reg2mem
  %gp_offset_p110.reload248 = load i32*, i32** %gp_offset_p110.reg2mem
  %gp_offset111 = load i32, i32* %gp_offset_p110.reload248
  store i32 %gp_offset111, i32* %gp_offset111.reg2mem
  %gp_offset111.reload247 = load i32, i32* %gp_offset111.reg2mem
  %fits_in_gp112 = icmp ule i32 %gp_offset111.reload247, 40
  br i1 %fits_in_gp112, label %vaarg.in_reg113, label %vaarg.in_mem115

vaarg.in_reg113:                                  ; preds = %sw.bb109
  %tmp79.reload249 = load %struct.__va_list_tag*, %struct.__va_list_tag** %tmp79.reg2mem
  %tmp80 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %tmp79.reload249, i32 0, i32 3
  %reg_save_area114 = load i8*, i8** %tmp80
  %gp_offset111.reload246 = load i32, i32* %gp_offset111.reg2mem
  %tmp81 = getelementptr i8, i8* %reg_save_area114, i32 %gp_offset111.reload246
  %tmp82 = bitcast i8* %tmp81 to i64*
  store i64* %tmp82, i64** %tmp82.reg2mem
  %gp_offset111.reload = load i32, i32* %gp_offset111.reg2mem
  %tmp83 = add i32 %gp_offset111.reload, 8
  %gp_offset_p110.reload = load i32*, i32** %gp_offset_p110.reg2mem
  store i32 %tmp83, i32* %gp_offset_p110.reload
  %tmp82.reload = load i64*, i64** %tmp82.reg2mem
  store i64* %tmp82.reload, i64** %vaarg.addr120.reg2mem
  br label %vaarg.end119

vaarg.in_mem115:                                  ; preds = %sw.bb109
  %tmp79.reload = load %struct.__va_list_tag*, %struct.__va_list_tag** %tmp79.reg2mem
  %overflow_arg_area_p116 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %tmp79.reload, i32 0, i32 2
  %overflow_arg_area117 = load i8*, i8** %overflow_arg_area_p116
  %tmp84 = bitcast i8* %overflow_arg_area117 to i64*
  store i64* %tmp84, i64** %tmp84.reg2mem
  %overflow_arg_area.next118 = getelementptr i8, i8* %overflow_arg_area117, i32 8
  store i8* %overflow_arg_area.next118, i8** %overflow_arg_area_p116
  %tmp84.reload = load i64*, i64** %tmp84.reg2mem
  store i64* %tmp84.reload, i64** %vaarg.addr120.reg2mem
  br label %vaarg.end119

vaarg.end119:                                     ; preds = %vaarg.in_mem115, %vaarg.in_reg113
  %vaarg.addr120.reload = load i64*, i64** %vaarg.addr120.reg2mem
  %tmp85 = load i64, i64* %vaarg.addr120.reload
  %tmp86 = load %struct.argument*, %struct.argument** %ap, align 8
  %a121 = getelementptr inbounds %struct.argument, %struct.argument* %tmp86, i32 0, i32 1
  %a_ulonglongint = bitcast %union.anon.17* %a121 to i64*
  store i64 %tmp85, i64* %a_ulonglongint, align 8
  br label %sw.epilog

sw.bb122:                                         ; preds = %for.body
  %tmp87 = load %struct.__va_list_tag*, %struct.__va_list_tag** %args.addr, align 8
  store %struct.__va_list_tag* %tmp87, %struct.__va_list_tag** %tmp87.reg2mem
  %tmp87.reload245 = load %struct.__va_list_tag*, %struct.__va_list_tag** %tmp87.reg2mem
  %fp_offset_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %tmp87.reload245, i32 0, i32 1
  store i32* %fp_offset_p, i32** %fp_offset_p.reg2mem
  %fp_offset_p.reload243 = load i32*, i32** %fp_offset_p.reg2mem
  %fp_offset = load i32, i32* %fp_offset_p.reload243
  store i32 %fp_offset, i32* %fp_offset.reg2mem
  %fp_offset.reload242 = load i32, i32* %fp_offset.reg2mem
  %fits_in_fp = icmp ule i32 %fp_offset.reload242, 160
  br i1 %fits_in_fp, label %vaarg.in_reg123, label %vaarg.in_mem125

vaarg.in_reg123:                                  ; preds = %sw.bb122
  %tmp87.reload244 = load %struct.__va_list_tag*, %struct.__va_list_tag** %tmp87.reg2mem
  %tmp88 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %tmp87.reload244, i32 0, i32 3
  %reg_save_area124 = load i8*, i8** %tmp88
  %fp_offset.reload241 = load i32, i32* %fp_offset.reg2mem
  %tmp89 = getelementptr i8, i8* %reg_save_area124, i32 %fp_offset.reload241
  %tmp90 = bitcast i8* %tmp89 to double*
  store double* %tmp90, double** %tmp90.reg2mem
  %fp_offset.reload = load i32, i32* %fp_offset.reg2mem
  %tmp91 = add i32 %fp_offset.reload, 16
  %fp_offset_p.reload = load i32*, i32** %fp_offset_p.reg2mem
  store i32 %tmp91, i32* %fp_offset_p.reload
  %tmp90.reload = load double*, double** %tmp90.reg2mem
  store double* %tmp90.reload, double** %vaarg.addr130.reg2mem
  br label %vaarg.end129

vaarg.in_mem125:                                  ; preds = %sw.bb122
  %tmp87.reload = load %struct.__va_list_tag*, %struct.__va_list_tag** %tmp87.reg2mem
  %overflow_arg_area_p126 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %tmp87.reload, i32 0, i32 2
  %overflow_arg_area127 = load i8*, i8** %overflow_arg_area_p126
  %tmp92 = bitcast i8* %overflow_arg_area127 to double*
  store double* %tmp92, double** %tmp92.reg2mem
  %overflow_arg_area.next128 = getelementptr i8, i8* %overflow_arg_area127, i32 8
  store i8* %overflow_arg_area.next128, i8** %overflow_arg_area_p126
  %tmp92.reload = load double*, double** %tmp92.reg2mem
  store double* %tmp92.reload, double** %vaarg.addr130.reg2mem
  br label %vaarg.end129

vaarg.end129:                                     ; preds = %vaarg.in_mem125, %vaarg.in_reg123
  %vaarg.addr130.reload = load double*, double** %vaarg.addr130.reg2mem
  %tmp93 = load double, double* %vaarg.addr130.reload
  %tmp94 = load %struct.argument*, %struct.argument** %ap, align 8
  %a131 = getelementptr inbounds %struct.argument, %struct.argument* %tmp94, i32 0, i32 1
  %a_double = bitcast %union.anon.17* %a131 to double*
  store double %tmp93, double* %a_double, align 8
  br label %sw.epilog

sw.bb132:                                         ; preds = %for.body
  %tmp95 = load %struct.__va_list_tag*, %struct.__va_list_tag** %args.addr, align 8
  %overflow_arg_area_p133 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %tmp95, i32 0, i32 2
  %overflow_arg_area134 = load i8*, i8** %overflow_arg_area_p133
  %tmp96 = getelementptr i8, i8* %overflow_arg_area134, i64 15
  %tmp97 = ptrtoint i8* %tmp96 to i64
  %tmp98 = and i64 %tmp97, -16
  %overflow_arg_area.align = inttoptr i64 %tmp98 to i8*
  %tmp99 = bitcast i8* %overflow_arg_area.align to x86_fp80*
  %overflow_arg_area.next135 = getelementptr i8, i8* %overflow_arg_area.align, i32 16
  store i8* %overflow_arg_area.next135, i8** %overflow_arg_area_p133
  %tmp100 = load x86_fp80, x86_fp80* %tmp99
  %tmp101 = load %struct.argument*, %struct.argument** %ap, align 8
  %a136 = getelementptr inbounds %struct.argument, %struct.argument* %tmp101, i32 0, i32 1
  %a_longdouble = bitcast %union.anon.17* %a136 to x86_fp80*
  store x86_fp80 %tmp100, x86_fp80* %a_longdouble, align 16
  br label %sw.epilog

sw.bb137:                                         ; preds = %for.body
  %tmp102 = load %struct.__va_list_tag*, %struct.__va_list_tag** %args.addr, align 8
  store %struct.__va_list_tag* %tmp102, %struct.__va_list_tag** %tmp102.reg2mem
  %tmp102.reload240 = load %struct.__va_list_tag*, %struct.__va_list_tag** %tmp102.reg2mem
  %gp_offset_p138 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %tmp102.reload240, i32 0, i32 0
  store i32* %gp_offset_p138, i32** %gp_offset_p138.reg2mem
  %gp_offset_p138.reload238 = load i32*, i32** %gp_offset_p138.reg2mem
  %gp_offset139 = load i32, i32* %gp_offset_p138.reload238
  store i32 %gp_offset139, i32* %gp_offset139.reg2mem
  %gp_offset139.reload237 = load i32, i32* %gp_offset139.reg2mem
  %fits_in_gp140 = icmp ule i32 %gp_offset139.reload237, 40
  br i1 %fits_in_gp140, label %vaarg.in_reg141, label %vaarg.in_mem143

vaarg.in_reg141:                                  ; preds = %sw.bb137
  %tmp102.reload239 = load %struct.__va_list_tag*, %struct.__va_list_tag** %tmp102.reg2mem
  %tmp103 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %tmp102.reload239, i32 0, i32 3
  %reg_save_area142 = load i8*, i8** %tmp103
  %gp_offset139.reload236 = load i32, i32* %gp_offset139.reg2mem
  %tmp104 = getelementptr i8, i8* %reg_save_area142, i32 %gp_offset139.reload236
  %tmp105 = bitcast i8* %tmp104 to i32*
  store i32* %tmp105, i32** %tmp105.reg2mem
  %gp_offset139.reload = load i32, i32* %gp_offset139.reg2mem
  %tmp106 = add i32 %gp_offset139.reload, 8
  %gp_offset_p138.reload = load i32*, i32** %gp_offset_p138.reg2mem
  store i32 %tmp106, i32* %gp_offset_p138.reload
  %tmp105.reload = load i32*, i32** %tmp105.reg2mem
  store i32* %tmp105.reload, i32** %vaarg.addr148.reg2mem
  br label %vaarg.end147

vaarg.in_mem143:                                  ; preds = %sw.bb137
  %tmp102.reload = load %struct.__va_list_tag*, %struct.__va_list_tag** %tmp102.reg2mem
  %overflow_arg_area_p144 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %tmp102.reload, i32 0, i32 2
  %overflow_arg_area145 = load i8*, i8** %overflow_arg_area_p144
  %tmp107 = bitcast i8* %overflow_arg_area145 to i32*
  store i32* %tmp107, i32** %tmp107.reg2mem
  %overflow_arg_area.next146 = getelementptr i8, i8* %overflow_arg_area145, i32 8
  store i8* %overflow_arg_area.next146, i8** %overflow_arg_area_p144
  %tmp107.reload = load i32*, i32** %tmp107.reg2mem
  store i32* %tmp107.reload, i32** %vaarg.addr148.reg2mem
  br label %vaarg.end147

vaarg.end147:                                     ; preds = %vaarg.in_mem143, %vaarg.in_reg141
  %vaarg.addr148.reload = load i32*, i32** %vaarg.addr148.reg2mem
  %tmp108 = load i32, i32* %vaarg.addr148.reload
  %tmp109 = load %struct.argument*, %struct.argument** %ap, align 8
  %a149 = getelementptr inbounds %struct.argument, %struct.argument* %tmp109, i32 0, i32 1
  %a_char = bitcast %union.anon.17* %a149 to i32*
  store i32 %tmp108, i32* %a_char, align 4
  br label %sw.epilog

sw.bb150:                                         ; preds = %for.body
  %tmp110 = load %struct.__va_list_tag*, %struct.__va_list_tag** %args.addr, align 8
  store %struct.__va_list_tag* %tmp110, %struct.__va_list_tag** %tmp110.reg2mem
  %tmp110.reload235 = load %struct.__va_list_tag*, %struct.__va_list_tag** %tmp110.reg2mem
  %gp_offset_p151 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %tmp110.reload235, i32 0, i32 0
  store i32* %gp_offset_p151, i32** %gp_offset_p151.reg2mem
  %gp_offset_p151.reload233 = load i32*, i32** %gp_offset_p151.reg2mem
  %gp_offset152 = load i32, i32* %gp_offset_p151.reload233
  store i32 %gp_offset152, i32* %gp_offset152.reg2mem
  %gp_offset152.reload232 = load i32, i32* %gp_offset152.reg2mem
  %fits_in_gp153 = icmp ule i32 %gp_offset152.reload232, 40
  br i1 %fits_in_gp153, label %vaarg.in_reg154, label %vaarg.in_mem156

vaarg.in_reg154:                                  ; preds = %sw.bb150
  %tmp110.reload234 = load %struct.__va_list_tag*, %struct.__va_list_tag** %tmp110.reg2mem
  %tmp111 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %tmp110.reload234, i32 0, i32 3
  %reg_save_area155 = load i8*, i8** %tmp111
  %gp_offset152.reload231 = load i32, i32* %gp_offset152.reg2mem
  %tmp112 = getelementptr i8, i8* %reg_save_area155, i32 %gp_offset152.reload231
  %tmp113 = bitcast i8* %tmp112 to i32*
  store i32* %tmp113, i32** %tmp113.reg2mem
  %gp_offset152.reload = load i32, i32* %gp_offset152.reg2mem
  %tmp114 = add i32 %gp_offset152.reload, 8
  %gp_offset_p151.reload = load i32*, i32** %gp_offset_p151.reg2mem
  store i32 %tmp114, i32* %gp_offset_p151.reload
  %tmp113.reload = load i32*, i32** %tmp113.reg2mem
  store i32* %tmp113.reload, i32** %vaarg.addr161.reg2mem
  br label %vaarg.end160

vaarg.in_mem156:                                  ; preds = %sw.bb150
  %tmp110.reload = load %struct.__va_list_tag*, %struct.__va_list_tag** %tmp110.reg2mem
  %overflow_arg_area_p157 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %tmp110.reload, i32 0, i32 2
  %overflow_arg_area158 = load i8*, i8** %overflow_arg_area_p157
  %tmp115 = bitcast i8* %overflow_arg_area158 to i32*
  store i32* %tmp115, i32** %tmp115.reg2mem
  %overflow_arg_area.next159 = getelementptr i8, i8* %overflow_arg_area158, i32 8
  store i8* %overflow_arg_area.next159, i8** %overflow_arg_area_p157
  %tmp115.reload = load i32*, i32** %tmp115.reg2mem
  store i32* %tmp115.reload, i32** %vaarg.addr161.reg2mem
  br label %vaarg.end160

vaarg.end160:                                     ; preds = %vaarg.in_mem156, %vaarg.in_reg154
  %vaarg.addr161.reload = load i32*, i32** %vaarg.addr161.reg2mem
  %tmp116 = load i32, i32* %vaarg.addr161.reload
  %tmp117 = load %struct.argument*, %struct.argument** %ap, align 8
  %a162 = getelementptr inbounds %struct.argument, %struct.argument* %tmp117, i32 0, i32 1
  %a_wide_char = bitcast %union.anon.17* %a162 to i32*
  store i32 %tmp116, i32* %a_wide_char, align 4
  br label %sw.epilog

sw.bb163:                                         ; preds = %for.body
  %tmp118 = load %struct.__va_list_tag*, %struct.__va_list_tag** %args.addr, align 8
  store %struct.__va_list_tag* %tmp118, %struct.__va_list_tag** %tmp118.reg2mem
  %tmp118.reload230 = load %struct.__va_list_tag*, %struct.__va_list_tag** %tmp118.reg2mem
  %gp_offset_p164 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %tmp118.reload230, i32 0, i32 0
  store i32* %gp_offset_p164, i32** %gp_offset_p164.reg2mem
  %gp_offset_p164.reload228 = load i32*, i32** %gp_offset_p164.reg2mem
  %gp_offset165 = load i32, i32* %gp_offset_p164.reload228
  store i32 %gp_offset165, i32* %gp_offset165.reg2mem
  %gp_offset165.reload227 = load i32, i32* %gp_offset165.reg2mem
  %fits_in_gp166 = icmp ule i32 %gp_offset165.reload227, 40
  br i1 %fits_in_gp166, label %vaarg.in_reg167, label %vaarg.in_mem169

vaarg.in_reg167:                                  ; preds = %sw.bb163
  %tmp118.reload229 = load %struct.__va_list_tag*, %struct.__va_list_tag** %tmp118.reg2mem
  %tmp119 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %tmp118.reload229, i32 0, i32 3
  %reg_save_area168 = load i8*, i8** %tmp119
  %gp_offset165.reload226 = load i32, i32* %gp_offset165.reg2mem
  %tmp120 = getelementptr i8, i8* %reg_save_area168, i32 %gp_offset165.reload226
  %tmp121 = bitcast i8* %tmp120 to i8**
  store i8** %tmp121, i8*** %tmp121.reg2mem
  %gp_offset165.reload = load i32, i32* %gp_offset165.reg2mem
  %tmp122 = add i32 %gp_offset165.reload, 8
  %gp_offset_p164.reload = load i32*, i32** %gp_offset_p164.reg2mem
  store i32 %tmp122, i32* %gp_offset_p164.reload
  %tmp121.reload = load i8**, i8*** %tmp121.reg2mem
  store i8** %tmp121.reload, i8*** %vaarg.addr174.reg2mem
  br label %vaarg.end173

vaarg.in_mem169:                                  ; preds = %sw.bb163
  %tmp118.reload = load %struct.__va_list_tag*, %struct.__va_list_tag** %tmp118.reg2mem
  %overflow_arg_area_p170 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %tmp118.reload, i32 0, i32 2
  %overflow_arg_area171 = load i8*, i8** %overflow_arg_area_p170
  %tmp123 = bitcast i8* %overflow_arg_area171 to i8**
  store i8** %tmp123, i8*** %tmp123.reg2mem
  %overflow_arg_area.next172 = getelementptr i8, i8* %overflow_arg_area171, i32 8
  store i8* %overflow_arg_area.next172, i8** %overflow_arg_area_p170
  %tmp123.reload = load i8**, i8*** %tmp123.reg2mem
  store i8** %tmp123.reload, i8*** %vaarg.addr174.reg2mem
  br label %vaarg.end173

vaarg.end173:                                     ; preds = %vaarg.in_mem169, %vaarg.in_reg167
  %vaarg.addr174.reload = load i8**, i8*** %vaarg.addr174.reg2mem
  %tmp124 = load i8*, i8** %vaarg.addr174.reload
  %tmp125 = load %struct.argument*, %struct.argument** %ap, align 8
  %a175 = getelementptr inbounds %struct.argument, %struct.argument* %tmp125, i32 0, i32 1
  %a_string = bitcast %union.anon.17* %a175 to i8**
  store i8* %tmp124, i8** %a_string, align 8
  %tmp126 = load %struct.argument*, %struct.argument** %ap, align 8
  %a176 = getelementptr inbounds %struct.argument, %struct.argument* %tmp126, i32 0, i32 1
  %a_string177 = bitcast %union.anon.17* %a176 to i8**
  %tmp127 = load i8*, i8** %a_string177, align 8
  %cmp178 = icmp eq i8* %tmp127, null
  br i1 %cmp178, label %if.then, label %vaarg.end173.if.end_crit_edge

vaarg.end173.if.end_crit_edge:                    ; preds = %vaarg.end173
  br label %if.end

if.then:                                          ; preds = %vaarg.end173
  %tmp128 = load %struct.argument*, %struct.argument** %ap, align 8
  %a180 = getelementptr inbounds %struct.argument, %struct.argument* %tmp128, i32 0, i32 1
  %a_string181 = bitcast %union.anon.17* %a180 to i8**
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str147, i32 0, i32 0), i8** %a_string181, align 8
  br label %if.end

if.end:                                           ; preds = %vaarg.end173.if.end_crit_edge, %if.then
  br label %sw.epilog

sw.bb182:                                         ; preds = %for.body
  %tmp129 = load %struct.__va_list_tag*, %struct.__va_list_tag** %args.addr, align 8
  store %struct.__va_list_tag* %tmp129, %struct.__va_list_tag** %tmp129.reg2mem
  %tmp129.reload225 = load %struct.__va_list_tag*, %struct.__va_list_tag** %tmp129.reg2mem
  %gp_offset_p183 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %tmp129.reload225, i32 0, i32 0
  store i32* %gp_offset_p183, i32** %gp_offset_p183.reg2mem
  %gp_offset_p183.reload223 = load i32*, i32** %gp_offset_p183.reg2mem
  %gp_offset184 = load i32, i32* %gp_offset_p183.reload223
  store i32 %gp_offset184, i32* %gp_offset184.reg2mem
  %gp_offset184.reload222 = load i32, i32* %gp_offset184.reg2mem
  %fits_in_gp185 = icmp ule i32 %gp_offset184.reload222, 40
  br i1 %fits_in_gp185, label %vaarg.in_reg186, label %vaarg.in_mem188

vaarg.in_reg186:                                  ; preds = %sw.bb182
  %tmp129.reload224 = load %struct.__va_list_tag*, %struct.__va_list_tag** %tmp129.reg2mem
  %tmp130 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %tmp129.reload224, i32 0, i32 3
  %reg_save_area187 = load i8*, i8** %tmp130
  %gp_offset184.reload221 = load i32, i32* %gp_offset184.reg2mem
  %tmp131 = getelementptr i8, i8* %reg_save_area187, i32 %gp_offset184.reload221
  %tmp132 = bitcast i8* %tmp131 to i32**
  store i32** %tmp132, i32*** %tmp132.reg2mem
  %gp_offset184.reload = load i32, i32* %gp_offset184.reg2mem
  %tmp133 = add i32 %gp_offset184.reload, 8
  %gp_offset_p183.reload = load i32*, i32** %gp_offset_p183.reg2mem
  store i32 %tmp133, i32* %gp_offset_p183.reload
  %tmp132.reload = load i32**, i32*** %tmp132.reg2mem
  store i32** %tmp132.reload, i32*** %vaarg.addr193.reg2mem
  br label %vaarg.end192

vaarg.in_mem188:                                  ; preds = %sw.bb182
  %tmp129.reload = load %struct.__va_list_tag*, %struct.__va_list_tag** %tmp129.reg2mem
  %overflow_arg_area_p189 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %tmp129.reload, i32 0, i32 2
  %overflow_arg_area190 = load i8*, i8** %overflow_arg_area_p189
  %tmp134 = bitcast i8* %overflow_arg_area190 to i32**
  store i32** %tmp134, i32*** %tmp134.reg2mem
  %overflow_arg_area.next191 = getelementptr i8, i8* %overflow_arg_area190, i32 8
  store i8* %overflow_arg_area.next191, i8** %overflow_arg_area_p189
  %tmp134.reload = load i32**, i32*** %tmp134.reg2mem
  store i32** %tmp134.reload, i32*** %vaarg.addr193.reg2mem
  br label %vaarg.end192

vaarg.end192:                                     ; preds = %vaarg.in_mem188, %vaarg.in_reg186
  %vaarg.addr193.reload = load i32**, i32*** %vaarg.addr193.reg2mem
  %tmp135 = load i32*, i32** %vaarg.addr193.reload
  %tmp136 = load %struct.argument*, %struct.argument** %ap, align 8
  %a194 = getelementptr inbounds %struct.argument, %struct.argument* %tmp136, i32 0, i32 1
  %a_wide_string = bitcast %union.anon.17* %a194 to i32**
  store i32* %tmp135, i32** %a_wide_string, align 8
  %tmp137 = load %struct.argument*, %struct.argument** %ap, align 8
  %a195 = getelementptr inbounds %struct.argument, %struct.argument* %tmp137, i32 0, i32 1
  %a_wide_string196 = bitcast %union.anon.17* %a195 to i32**
  %tmp138 = load i32*, i32** %a_wide_string196, align 8
  %cmp197 = icmp eq i32* %tmp138, null
  br i1 %cmp197, label %if.then199, label %vaarg.end192.if.end202_crit_edge

vaarg.end192.if.end202_crit_edge:                 ; preds = %vaarg.end192
  br label %if.end202

if.then199:                                       ; preds = %vaarg.end192
  %tmp139 = load %struct.argument*, %struct.argument** %ap, align 8
  %a200 = getelementptr inbounds %struct.argument, %struct.argument* %tmp139, i32 0, i32 1
  %a_wide_string201 = bitcast %union.anon.17* %a200 to i32**
  store i32* getelementptr inbounds ([7 x i32], [7 x i32]* @printf_fetchargs.wide_null_string, i32 0, i32 0), i32** %a_wide_string201, align 8
  br label %if.end202

if.end202:                                        ; preds = %vaarg.end192.if.end202_crit_edge, %if.then199
  br label %sw.epilog

sw.bb203:                                         ; preds = %for.body
  %tmp140 = load %struct.__va_list_tag*, %struct.__va_list_tag** %args.addr, align 8
  store %struct.__va_list_tag* %tmp140, %struct.__va_list_tag** %tmp140.reg2mem
  %tmp140.reload220 = load %struct.__va_list_tag*, %struct.__va_list_tag** %tmp140.reg2mem
  %gp_offset_p204 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %tmp140.reload220, i32 0, i32 0
  store i32* %gp_offset_p204, i32** %gp_offset_p204.reg2mem
  %gp_offset_p204.reload218 = load i32*, i32** %gp_offset_p204.reg2mem
  %gp_offset205 = load i32, i32* %gp_offset_p204.reload218
  store i32 %gp_offset205, i32* %gp_offset205.reg2mem
  %gp_offset205.reload217 = load i32, i32* %gp_offset205.reg2mem
  %fits_in_gp206 = icmp ule i32 %gp_offset205.reload217, 40
  br i1 %fits_in_gp206, label %vaarg.in_reg207, label %vaarg.in_mem209

vaarg.in_reg207:                                  ; preds = %sw.bb203
  %tmp140.reload219 = load %struct.__va_list_tag*, %struct.__va_list_tag** %tmp140.reg2mem
  %tmp141 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %tmp140.reload219, i32 0, i32 3
  %reg_save_area208 = load i8*, i8** %tmp141
  %gp_offset205.reload216 = load i32, i32* %gp_offset205.reg2mem
  %tmp142 = getelementptr i8, i8* %reg_save_area208, i32 %gp_offset205.reload216
  %tmp143 = bitcast i8* %tmp142 to i8**
  store i8** %tmp143, i8*** %tmp143.reg2mem
  %gp_offset205.reload = load i32, i32* %gp_offset205.reg2mem
  %tmp144 = add i32 %gp_offset205.reload, 8
  %gp_offset_p204.reload = load i32*, i32** %gp_offset_p204.reg2mem
  store i32 %tmp144, i32* %gp_offset_p204.reload
  %tmp143.reload = load i8**, i8*** %tmp143.reg2mem
  store i8** %tmp143.reload, i8*** %vaarg.addr214.reg2mem
  br label %vaarg.end213

vaarg.in_mem209:                                  ; preds = %sw.bb203
  %tmp140.reload = load %struct.__va_list_tag*, %struct.__va_list_tag** %tmp140.reg2mem
  %overflow_arg_area_p210 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %tmp140.reload, i32 0, i32 2
  %overflow_arg_area211 = load i8*, i8** %overflow_arg_area_p210
  %tmp145 = bitcast i8* %overflow_arg_area211 to i8**
  store i8** %tmp145, i8*** %tmp145.reg2mem
  %overflow_arg_area.next212 = getelementptr i8, i8* %overflow_arg_area211, i32 8
  store i8* %overflow_arg_area.next212, i8** %overflow_arg_area_p210
  %tmp145.reload = load i8**, i8*** %tmp145.reg2mem
  store i8** %tmp145.reload, i8*** %vaarg.addr214.reg2mem
  br label %vaarg.end213

vaarg.end213:                                     ; preds = %vaarg.in_mem209, %vaarg.in_reg207
  %vaarg.addr214.reload = load i8**, i8*** %vaarg.addr214.reg2mem
  %tmp146 = load i8*, i8** %vaarg.addr214.reload
  %tmp147 = load %struct.argument*, %struct.argument** %ap, align 8
  %a215 = getelementptr inbounds %struct.argument, %struct.argument* %tmp147, i32 0, i32 1
  %a_pointer = bitcast %union.anon.17* %a215 to i8**
  store i8* %tmp146, i8** %a_pointer, align 8
  br label %sw.epilog

sw.bb216:                                         ; preds = %for.body
  %tmp148 = load %struct.__va_list_tag*, %struct.__va_list_tag** %args.addr, align 8
  store %struct.__va_list_tag* %tmp148, %struct.__va_list_tag** %tmp148.reg2mem
  %tmp148.reload215 = load %struct.__va_list_tag*, %struct.__va_list_tag** %tmp148.reg2mem
  %gp_offset_p217 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %tmp148.reload215, i32 0, i32 0
  store i32* %gp_offset_p217, i32** %gp_offset_p217.reg2mem
  %gp_offset_p217.reload213 = load i32*, i32** %gp_offset_p217.reg2mem
  %gp_offset218 = load i32, i32* %gp_offset_p217.reload213
  store i32 %gp_offset218, i32* %gp_offset218.reg2mem
  %gp_offset218.reload212 = load i32, i32* %gp_offset218.reg2mem
  %fits_in_gp219 = icmp ule i32 %gp_offset218.reload212, 40
  br i1 %fits_in_gp219, label %vaarg.in_reg220, label %vaarg.in_mem222

vaarg.in_reg220:                                  ; preds = %sw.bb216
  %tmp148.reload214 = load %struct.__va_list_tag*, %struct.__va_list_tag** %tmp148.reg2mem
  %tmp149 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %tmp148.reload214, i32 0, i32 3
  %reg_save_area221 = load i8*, i8** %tmp149
  %gp_offset218.reload211 = load i32, i32* %gp_offset218.reg2mem
  %tmp150 = getelementptr i8, i8* %reg_save_area221, i32 %gp_offset218.reload211
  %tmp151 = bitcast i8* %tmp150 to i8**
  store i8** %tmp151, i8*** %tmp151.reg2mem
  %gp_offset218.reload = load i32, i32* %gp_offset218.reg2mem
  %tmp152 = add i32 %gp_offset218.reload, 8
  %gp_offset_p217.reload = load i32*, i32** %gp_offset_p217.reg2mem
  store i32 %tmp152, i32* %gp_offset_p217.reload
  %tmp151.reload = load i8**, i8*** %tmp151.reg2mem
  store i8** %tmp151.reload, i8*** %vaarg.addr227.reg2mem
  br label %vaarg.end226

vaarg.in_mem222:                                  ; preds = %sw.bb216
  %tmp148.reload = load %struct.__va_list_tag*, %struct.__va_list_tag** %tmp148.reg2mem
  %overflow_arg_area_p223 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %tmp148.reload, i32 0, i32 2
  %overflow_arg_area224 = load i8*, i8** %overflow_arg_area_p223
  %tmp153 = bitcast i8* %overflow_arg_area224 to i8**
  store i8** %tmp153, i8*** %tmp153.reg2mem
  %overflow_arg_area.next225 = getelementptr i8, i8* %overflow_arg_area224, i32 8
  store i8* %overflow_arg_area.next225, i8** %overflow_arg_area_p223
  %tmp153.reload = load i8**, i8*** %tmp153.reg2mem
  store i8** %tmp153.reload, i8*** %vaarg.addr227.reg2mem
  br label %vaarg.end226

vaarg.end226:                                     ; preds = %vaarg.in_mem222, %vaarg.in_reg220
  %vaarg.addr227.reload = load i8**, i8*** %vaarg.addr227.reg2mem
  %tmp154 = load i8*, i8** %vaarg.addr227.reload
  %tmp155 = load %struct.argument*, %struct.argument** %ap, align 8
  %a228 = getelementptr inbounds %struct.argument, %struct.argument* %tmp155, i32 0, i32 1
  %a_count_schar_pointer = bitcast %union.anon.17* %a228 to i8**
  store i8* %tmp154, i8** %a_count_schar_pointer, align 8
  br label %sw.epilog

sw.bb229:                                         ; preds = %for.body
  %tmp156 = load %struct.__va_list_tag*, %struct.__va_list_tag** %args.addr, align 8
  store %struct.__va_list_tag* %tmp156, %struct.__va_list_tag** %tmp156.reg2mem
  %tmp156.reload210 = load %struct.__va_list_tag*, %struct.__va_list_tag** %tmp156.reg2mem
  %gp_offset_p230 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %tmp156.reload210, i32 0, i32 0
  store i32* %gp_offset_p230, i32** %gp_offset_p230.reg2mem
  %gp_offset_p230.reload208 = load i32*, i32** %gp_offset_p230.reg2mem
  %gp_offset231 = load i32, i32* %gp_offset_p230.reload208
  store i32 %gp_offset231, i32* %gp_offset231.reg2mem
  %gp_offset231.reload207 = load i32, i32* %gp_offset231.reg2mem
  %fits_in_gp232 = icmp ule i32 %gp_offset231.reload207, 40
  br i1 %fits_in_gp232, label %vaarg.in_reg233, label %vaarg.in_mem235

vaarg.in_reg233:                                  ; preds = %sw.bb229
  %tmp156.reload209 = load %struct.__va_list_tag*, %struct.__va_list_tag** %tmp156.reg2mem
  %tmp157 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %tmp156.reload209, i32 0, i32 3
  %reg_save_area234 = load i8*, i8** %tmp157
  %gp_offset231.reload206 = load i32, i32* %gp_offset231.reg2mem
  %tmp158 = getelementptr i8, i8* %reg_save_area234, i32 %gp_offset231.reload206
  %tmp159 = bitcast i8* %tmp158 to i16**
  store i16** %tmp159, i16*** %tmp159.reg2mem
  %gp_offset231.reload = load i32, i32* %gp_offset231.reg2mem
  %tmp160 = add i32 %gp_offset231.reload, 8
  %gp_offset_p230.reload = load i32*, i32** %gp_offset_p230.reg2mem
  store i32 %tmp160, i32* %gp_offset_p230.reload
  %tmp159.reload = load i16**, i16*** %tmp159.reg2mem
  store i16** %tmp159.reload, i16*** %vaarg.addr240.reg2mem
  br label %vaarg.end239

vaarg.in_mem235:                                  ; preds = %sw.bb229
  %tmp156.reload = load %struct.__va_list_tag*, %struct.__va_list_tag** %tmp156.reg2mem
  %overflow_arg_area_p236 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %tmp156.reload, i32 0, i32 2
  %overflow_arg_area237 = load i8*, i8** %overflow_arg_area_p236
  %tmp161 = bitcast i8* %overflow_arg_area237 to i16**
  store i16** %tmp161, i16*** %tmp161.reg2mem
  %overflow_arg_area.next238 = getelementptr i8, i8* %overflow_arg_area237, i32 8
  store i8* %overflow_arg_area.next238, i8** %overflow_arg_area_p236
  %tmp161.reload = load i16**, i16*** %tmp161.reg2mem
  store i16** %tmp161.reload, i16*** %vaarg.addr240.reg2mem
  br label %vaarg.end239

vaarg.end239:                                     ; preds = %vaarg.in_mem235, %vaarg.in_reg233
  %vaarg.addr240.reload = load i16**, i16*** %vaarg.addr240.reg2mem
  %tmp162 = load i16*, i16** %vaarg.addr240.reload
  %tmp163 = load %struct.argument*, %struct.argument** %ap, align 8
  %a241 = getelementptr inbounds %struct.argument, %struct.argument* %tmp163, i32 0, i32 1
  %a_count_short_pointer = bitcast %union.anon.17* %a241 to i16**
  store i16* %tmp162, i16** %a_count_short_pointer, align 8
  br label %sw.epilog

sw.bb242:                                         ; preds = %for.body
  %tmp164 = load %struct.__va_list_tag*, %struct.__va_list_tag** %args.addr, align 8
  store %struct.__va_list_tag* %tmp164, %struct.__va_list_tag** %tmp164.reg2mem
  %tmp164.reload205 = load %struct.__va_list_tag*, %struct.__va_list_tag** %tmp164.reg2mem
  %gp_offset_p243 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %tmp164.reload205, i32 0, i32 0
  store i32* %gp_offset_p243, i32** %gp_offset_p243.reg2mem
  %gp_offset_p243.reload203 = load i32*, i32** %gp_offset_p243.reg2mem
  %gp_offset244 = load i32, i32* %gp_offset_p243.reload203
  store i32 %gp_offset244, i32* %gp_offset244.reg2mem
  %gp_offset244.reload202 = load i32, i32* %gp_offset244.reg2mem
  %fits_in_gp245 = icmp ule i32 %gp_offset244.reload202, 40
  br i1 %fits_in_gp245, label %vaarg.in_reg246, label %vaarg.in_mem248

vaarg.in_reg246:                                  ; preds = %sw.bb242
  %tmp164.reload204 = load %struct.__va_list_tag*, %struct.__va_list_tag** %tmp164.reg2mem
  %tmp165 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %tmp164.reload204, i32 0, i32 3
  %reg_save_area247 = load i8*, i8** %tmp165
  %gp_offset244.reload201 = load i32, i32* %gp_offset244.reg2mem
  %tmp166 = getelementptr i8, i8* %reg_save_area247, i32 %gp_offset244.reload201
  %tmp167 = bitcast i8* %tmp166 to i32**
  store i32** %tmp167, i32*** %tmp167.reg2mem
  %gp_offset244.reload = load i32, i32* %gp_offset244.reg2mem
  %tmp168 = add i32 %gp_offset244.reload, 8
  %gp_offset_p243.reload = load i32*, i32** %gp_offset_p243.reg2mem
  store i32 %tmp168, i32* %gp_offset_p243.reload
  %tmp167.reload = load i32**, i32*** %tmp167.reg2mem
  store i32** %tmp167.reload, i32*** %vaarg.addr253.reg2mem
  br label %vaarg.end252

vaarg.in_mem248:                                  ; preds = %sw.bb242
  %tmp164.reload = load %struct.__va_list_tag*, %struct.__va_list_tag** %tmp164.reg2mem
  %overflow_arg_area_p249 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %tmp164.reload, i32 0, i32 2
  %overflow_arg_area250 = load i8*, i8** %overflow_arg_area_p249
  %tmp169 = bitcast i8* %overflow_arg_area250 to i32**
  store i32** %tmp169, i32*** %tmp169.reg2mem
  %overflow_arg_area.next251 = getelementptr i8, i8* %overflow_arg_area250, i32 8
  store i8* %overflow_arg_area.next251, i8** %overflow_arg_area_p249
  %tmp169.reload = load i32**, i32*** %tmp169.reg2mem
  store i32** %tmp169.reload, i32*** %vaarg.addr253.reg2mem
  br label %vaarg.end252

vaarg.end252:                                     ; preds = %vaarg.in_mem248, %vaarg.in_reg246
  %vaarg.addr253.reload = load i32**, i32*** %vaarg.addr253.reg2mem
  %tmp170 = load i32*, i32** %vaarg.addr253.reload
  %tmp171 = load %struct.argument*, %struct.argument** %ap, align 8
  %a254 = getelementptr inbounds %struct.argument, %struct.argument* %tmp171, i32 0, i32 1
  %a_count_int_pointer = bitcast %union.anon.17* %a254 to i32**
  store i32* %tmp170, i32** %a_count_int_pointer, align 8
  br label %sw.epilog

sw.bb255:                                         ; preds = %for.body
  %tmp172 = load %struct.__va_list_tag*, %struct.__va_list_tag** %args.addr, align 8
  store %struct.__va_list_tag* %tmp172, %struct.__va_list_tag** %tmp172.reg2mem
  %tmp172.reload200 = load %struct.__va_list_tag*, %struct.__va_list_tag** %tmp172.reg2mem
  %gp_offset_p256 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %tmp172.reload200, i32 0, i32 0
  store i32* %gp_offset_p256, i32** %gp_offset_p256.reg2mem
  %gp_offset_p256.reload198 = load i32*, i32** %gp_offset_p256.reg2mem
  %gp_offset257 = load i32, i32* %gp_offset_p256.reload198
  store i32 %gp_offset257, i32* %gp_offset257.reg2mem
  %gp_offset257.reload197 = load i32, i32* %gp_offset257.reg2mem
  %fits_in_gp258 = icmp ule i32 %gp_offset257.reload197, 40
  br i1 %fits_in_gp258, label %vaarg.in_reg259, label %vaarg.in_mem261

vaarg.in_reg259:                                  ; preds = %sw.bb255
  %tmp172.reload199 = load %struct.__va_list_tag*, %struct.__va_list_tag** %tmp172.reg2mem
  %tmp173 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %tmp172.reload199, i32 0, i32 3
  %reg_save_area260 = load i8*, i8** %tmp173
  %gp_offset257.reload196 = load i32, i32* %gp_offset257.reg2mem
  %tmp174 = getelementptr i8, i8* %reg_save_area260, i32 %gp_offset257.reload196
  %tmp175 = bitcast i8* %tmp174 to i64**
  store i64** %tmp175, i64*** %tmp175.reg2mem
  %gp_offset257.reload = load i32, i32* %gp_offset257.reg2mem
  %tmp176 = add i32 %gp_offset257.reload, 8
  %gp_offset_p256.reload = load i32*, i32** %gp_offset_p256.reg2mem
  store i32 %tmp176, i32* %gp_offset_p256.reload
  %tmp175.reload = load i64**, i64*** %tmp175.reg2mem
  store i64** %tmp175.reload, i64*** %vaarg.addr266.reg2mem
  br label %vaarg.end265

vaarg.in_mem261:                                  ; preds = %sw.bb255
  %tmp172.reload = load %struct.__va_list_tag*, %struct.__va_list_tag** %tmp172.reg2mem
  %overflow_arg_area_p262 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %tmp172.reload, i32 0, i32 2
  %overflow_arg_area263 = load i8*, i8** %overflow_arg_area_p262
  %tmp177 = bitcast i8* %overflow_arg_area263 to i64**
  store i64** %tmp177, i64*** %tmp177.reg2mem
  %overflow_arg_area.next264 = getelementptr i8, i8* %overflow_arg_area263, i32 8
  store i8* %overflow_arg_area.next264, i8** %overflow_arg_area_p262
  %tmp177.reload = load i64**, i64*** %tmp177.reg2mem
  store i64** %tmp177.reload, i64*** %vaarg.addr266.reg2mem
  br label %vaarg.end265

vaarg.end265:                                     ; preds = %vaarg.in_mem261, %vaarg.in_reg259
  %vaarg.addr266.reload = load i64**, i64*** %vaarg.addr266.reg2mem
  %tmp178 = load i64*, i64** %vaarg.addr266.reload
  %tmp179 = load %struct.argument*, %struct.argument** %ap, align 8
  %a267 = getelementptr inbounds %struct.argument, %struct.argument* %tmp179, i32 0, i32 1
  %a_count_longint_pointer = bitcast %union.anon.17* %a267 to i64**
  store i64* %tmp178, i64** %a_count_longint_pointer, align 8
  br label %sw.epilog

sw.bb268:                                         ; preds = %for.body
  %tmp180 = load %struct.__va_list_tag*, %struct.__va_list_tag** %args.addr, align 8
  store %struct.__va_list_tag* %tmp180, %struct.__va_list_tag** %tmp180.reg2mem
  %tmp180.reload195 = load %struct.__va_list_tag*, %struct.__va_list_tag** %tmp180.reg2mem
  %gp_offset_p269 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %tmp180.reload195, i32 0, i32 0
  store i32* %gp_offset_p269, i32** %gp_offset_p269.reg2mem
  %gp_offset_p269.reload193 = load i32*, i32** %gp_offset_p269.reg2mem
  %gp_offset270 = load i32, i32* %gp_offset_p269.reload193
  store i32 %gp_offset270, i32* %gp_offset270.reg2mem
  %gp_offset270.reload192 = load i32, i32* %gp_offset270.reg2mem
  %fits_in_gp271 = icmp ule i32 %gp_offset270.reload192, 40
  br i1 %fits_in_gp271, label %vaarg.in_reg272, label %vaarg.in_mem274

vaarg.in_reg272:                                  ; preds = %sw.bb268
  %tmp180.reload194 = load %struct.__va_list_tag*, %struct.__va_list_tag** %tmp180.reg2mem
  %tmp181 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %tmp180.reload194, i32 0, i32 3
  %reg_save_area273 = load i8*, i8** %tmp181
  %gp_offset270.reload191 = load i32, i32* %gp_offset270.reg2mem
  %tmp182 = getelementptr i8, i8* %reg_save_area273, i32 %gp_offset270.reload191
  %tmp183 = bitcast i8* %tmp182 to i64**
  store i64** %tmp183, i64*** %tmp183.reg2mem
  %gp_offset270.reload = load i32, i32* %gp_offset270.reg2mem
  %tmp184 = add i32 %gp_offset270.reload, 8
  %gp_offset_p269.reload = load i32*, i32** %gp_offset_p269.reg2mem
  store i32 %tmp184, i32* %gp_offset_p269.reload
  %tmp183.reload = load i64**, i64*** %tmp183.reg2mem
  store i64** %tmp183.reload, i64*** %vaarg.addr279.reg2mem
  br label %vaarg.end278

vaarg.in_mem274:                                  ; preds = %sw.bb268
  %tmp180.reload = load %struct.__va_list_tag*, %struct.__va_list_tag** %tmp180.reg2mem
  %overflow_arg_area_p275 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %tmp180.reload, i32 0, i32 2
  %overflow_arg_area276 = load i8*, i8** %overflow_arg_area_p275
  %tmp185 = bitcast i8* %overflow_arg_area276 to i64**
  store i64** %tmp185, i64*** %tmp185.reg2mem
  %overflow_arg_area.next277 = getelementptr i8, i8* %overflow_arg_area276, i32 8
  store i8* %overflow_arg_area.next277, i8** %overflow_arg_area_p275
  %tmp185.reload = load i64**, i64*** %tmp185.reg2mem
  store i64** %tmp185.reload, i64*** %vaarg.addr279.reg2mem
  br label %vaarg.end278

vaarg.end278:                                     ; preds = %vaarg.in_mem274, %vaarg.in_reg272
  %vaarg.addr279.reload = load i64**, i64*** %vaarg.addr279.reg2mem
  %tmp186 = load i64*, i64** %vaarg.addr279.reload
  %tmp187 = load %struct.argument*, %struct.argument** %ap, align 8
  %a280 = getelementptr inbounds %struct.argument, %struct.argument* %tmp187, i32 0, i32 1
  %a_count_longlongint_pointer = bitcast %union.anon.17* %a280 to i64**
  store i64* %tmp186, i64** %a_count_longlongint_pointer, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %for.body
  store i32 -1, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %vaarg.end278, %vaarg.end265, %vaarg.end252, %vaarg.end239, %vaarg.end226, %vaarg.end213, %if.end202, %if.end, %vaarg.end160, %vaarg.end147, %sw.bb132, %vaarg.end129, %vaarg.end119, %vaarg.end106, %vaarg.end93, %vaarg.end80, %vaarg.end67, %vaarg.end54, %vaarg.end40, %vaarg.end26, %vaarg.end12, %vaarg.end
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog
  %tmp188 = load i64, i64* %i, align 8
  %inc = add i64 %tmp188, 1
  store i64 %inc, i64* %i, align 8
  %tmp189 = load %struct.argument*, %struct.argument** %ap, align 8
  %incdec.ptr = getelementptr inbounds %struct.argument, %struct.argument* %tmp189, i32 1
  store %struct.argument* %incdec.ptr, %struct.argument** %ap, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %sw.default
  %tmp190 = load i32, i32* %retval
  ret i32 %tmp190
}

; Function Attrs: nounwind uwtable
define i32 @printf_parse(i8* %format, %struct.char_directives* %d, %struct.arguments* %a) #0 {
entry:
  %retval = alloca i32, align 4
  %format.addr = alloca i8*, align 8
  %d.addr = alloca %struct.char_directives*, align 8
  %a.addr = alloca %struct.arguments*, align 8
  %cp = alloca i8*, align 8
  %arg_posn = alloca i64, align 8
  %d_allocated = alloca i64, align 8
  %a_allocated = alloca i64, align 8
  %max_width_length = alloca i64, align 8
  %max_precision_length = alloca i64, align 8
  %c = alloca i8, align 1
  %arg_index = alloca i64, align 8
  %dp = alloca %struct.char_directive*, align 8
  %np = alloca i8*, align 8
  %n = alloca i64, align 8
  %np134 = alloca i8*, align 8
  %n151 = alloca i64, align 8
  %n199 = alloca i64, align 8
  %memory_size = alloca i64, align 8
  %memory = alloca %struct.argument*, align 8
  %width_length = alloca i64, align 8
  %np324 = alloca i8*, align 8
  %n341 = alloca i64, align 8
  %n390 = alloca i64, align 8
  %memory_size395 = alloca i64, align 8
  %memory396 = alloca %struct.argument*, align 8
  %precision_length = alloca i64, align 8
  %type491 = alloca i32, align 4
  %flags492 = alloca i32, align 4
  %n659 = alloca i64, align 8
  %memory_size664 = alloca i64, align 8
  %memory665 = alloca %struct.argument*, align 8
  %memory_size740 = alloca i64, align 8
  %memory741 = alloca %struct.char_directive*, align 8
  %mul752.reg2mem = alloca i64
  %mul745.reg2mem = alloca i64
  %call695.reg2mem = alloca i8*
  %call693.reg2mem = alloca i8*
  %mul681.reg2mem = alloca i64
  %mul669.reg2mem = alloca i64
  %call426.reg2mem = alloca i8*
  %call424.reg2mem = alloca i8*
  %mul412.reg2mem = alloca i64
  %mul400.reg2mem = alloca i64
  %mul354.reg2mem = alloca i64
  %call232.reg2mem = alloca i8*
  %call230.reg2mem = alloca i8*
  %mul219.reg2mem = alloca i64
  %mul207.reg2mem = alloca i64
  %mul164.reg2mem = alloca i64
  %mul42.reg2mem = alloca i64
  %cond755.reg2mem = alloca i64
  %cond748.reg2mem = alloca i64
  %cond697.reg2mem = alloca i8*
  %cond684.reg2mem = alloca i64
  %cond672.reg2mem = alloca i64
  %cond428.reg2mem = alloca i8*
  %cond415.reg2mem = alloca i64
  %cond403.reg2mem = alloca i64
  %cond357.reg2mem = alloca i64
  %cond234.reg2mem = alloca i8*
  %cond222.reg2mem = alloca i64
  %cond210.reg2mem = alloca i64
  %cond167.reg2mem = alloca i64
  %cond.reg2mem = alloca i64
  %"reg2mem alloca point" = bitcast i32 0 to i32
  store i8* %format, i8** %format.addr, align 8
  store %struct.char_directives* %d, %struct.char_directives** %d.addr, align 8
  store %struct.arguments* %a, %struct.arguments** %a.addr, align 8
  %tmp = load i8*, i8** %format.addr, align 8
  store i8* %tmp, i8** %cp, align 8
  store i64 0, i64* %arg_posn, align 8
  store i64 0, i64* %max_width_length, align 8
  store i64 0, i64* %max_precision_length, align 8
  %tmp1 = load %struct.char_directives*, %struct.char_directives** %d.addr, align 8
  %count = getelementptr inbounds %struct.char_directives, %struct.char_directives* %tmp1, i32 0, i32 0
  store i64 0, i64* %count, align 8
  store i64 1, i64* %d_allocated, align 8
  %tmp2 = load i64, i64* %d_allocated, align 8
  %mul = mul i64 %tmp2, 88
  %call = call noalias i8* @malloc(i64 %mul) #8
  %tmp3 = bitcast i8* %call to %struct.char_directive*
  %tmp4 = load %struct.char_directives*, %struct.char_directives** %d.addr, align 8
  %dir = getelementptr inbounds %struct.char_directives, %struct.char_directives* %tmp4, i32 0, i32 1
  store %struct.char_directive* %tmp3, %struct.char_directive** %dir, align 8
  %tmp5 = load %struct.char_directives*, %struct.char_directives** %d.addr, align 8
  %dir1 = getelementptr inbounds %struct.char_directives, %struct.char_directives* %tmp5, i32 0, i32 1
  %tmp6 = load %struct.char_directive*, %struct.char_directive** %dir1, align 8
  %cmp = icmp eq %struct.char_directive* %tmp6, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %out_of_memory_1

if.end:                                           ; preds = %entry
  %tmp7 = load %struct.arguments*, %struct.arguments** %a.addr, align 8
  %count2 = getelementptr inbounds %struct.arguments, %struct.arguments* %tmp7, i32 0, i32 0
  store i64 0, i64* %count2, align 8
  store i64 0, i64* %a_allocated, align 8
  %tmp8 = load %struct.arguments*, %struct.arguments** %a.addr, align 8
  %arg = getelementptr inbounds %struct.arguments, %struct.arguments* %tmp8, i32 0, i32 1
  store %struct.argument* null, %struct.argument** %arg, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end768, %if.end
  %tmp9 = load i8*, i8** %cp, align 8
  %tmp10 = load i8, i8* %tmp9, align 1
  %conv = sext i8 %tmp10 to i32
  %cmp3 = icmp ne i32 %conv, 0
  br i1 %cmp3, label %while.body, label %while.end769

while.body:                                       ; preds = %while.cond
  %tmp11 = load i8*, i8** %cp, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %tmp11, i32 1
  store i8* %incdec.ptr, i8** %cp, align 8
  %tmp12 = load i8, i8* %tmp11, align 1
  store i8 %tmp12, i8* %c, align 1
  %tmp13 = load i8, i8* %c, align 1
  %conv5 = sext i8 %tmp13 to i32
  %cmp6 = icmp eq i32 %conv5, 37
  br i1 %cmp6, label %if.then8, label %while.body.if.end768_crit_edge

while.body.if.end768_crit_edge:                   ; preds = %while.body
  br label %if.end768

if.then8:                                         ; preds = %while.body
  store i64 -1, i64* %arg_index, align 8
  %tmp14 = load %struct.char_directives*, %struct.char_directives** %d.addr, align 8
  %count9 = getelementptr inbounds %struct.char_directives, %struct.char_directives* %tmp14, i32 0, i32 0
  %tmp15 = load i64, i64* %count9, align 8
  %tmp16 = load %struct.char_directives*, %struct.char_directives** %d.addr, align 8
  %dir10 = getelementptr inbounds %struct.char_directives, %struct.char_directives* %tmp16, i32 0, i32 1
  %tmp17 = load %struct.char_directive*, %struct.char_directive** %dir10, align 8
  %arrayidx = getelementptr inbounds %struct.char_directive, %struct.char_directive* %tmp17, i64 %tmp15
  store %struct.char_directive* %arrayidx, %struct.char_directive** %dp, align 8
  %tmp18 = load i8*, i8** %cp, align 8
  %add.ptr = getelementptr inbounds i8, i8* %tmp18, i64 -1
  %tmp19 = load %struct.char_directive*, %struct.char_directive** %dp, align 8
  %dir_start = getelementptr inbounds %struct.char_directive, %struct.char_directive* %tmp19, i32 0, i32 0
  store i8* %add.ptr, i8** %dir_start, align 8
  %tmp20 = load %struct.char_directive*, %struct.char_directive** %dp, align 8
  %flags = getelementptr inbounds %struct.char_directive, %struct.char_directive* %tmp20, i32 0, i32 2
  store i32 0, i32* %flags, align 4
  %tmp21 = load %struct.char_directive*, %struct.char_directive** %dp, align 8
  %width_start = getelementptr inbounds %struct.char_directive, %struct.char_directive* %tmp21, i32 0, i32 3
  store i8* null, i8** %width_start, align 8
  %tmp22 = load %struct.char_directive*, %struct.char_directive** %dp, align 8
  %width_end = getelementptr inbounds %struct.char_directive, %struct.char_directive* %tmp22, i32 0, i32 4
  store i8* null, i8** %width_end, align 8
  %tmp23 = load %struct.char_directive*, %struct.char_directive** %dp, align 8
  %width_arg_index = getelementptr inbounds %struct.char_directive, %struct.char_directive* %tmp23, i32 0, i32 5
  store i64 -1, i64* %width_arg_index, align 8
  %tmp24 = load %struct.char_directive*, %struct.char_directive** %dp, align 8
  %precision_start = getelementptr inbounds %struct.char_directive, %struct.char_directive* %tmp24, i32 0, i32 6
  store i8* null, i8** %precision_start, align 8
  %tmp25 = load %struct.char_directive*, %struct.char_directive** %dp, align 8
  %precision_end = getelementptr inbounds %struct.char_directive, %struct.char_directive* %tmp25, i32 0, i32 7
  store i8* null, i8** %precision_end, align 8
  %tmp26 = load %struct.char_directive*, %struct.char_directive** %dp, align 8
  %precision_arg_index = getelementptr inbounds %struct.char_directive, %struct.char_directive* %tmp26, i32 0, i32 8
  store i64 -1, i64* %precision_arg_index, align 8
  %tmp27 = load %struct.char_directive*, %struct.char_directive** %dp, align 8
  %arg_index11 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %tmp27, i32 0, i32 10
  store i64 -1, i64* %arg_index11, align 8
  %tmp28 = load i8*, i8** %cp, align 8
  %tmp29 = load i8, i8* %tmp28, align 1
  %conv12 = sext i8 %tmp29 to i32
  %cmp13 = icmp sge i32 %conv12, 48
  br i1 %cmp13, label %land.lhs.true, label %if.then8.if.end60_crit_edge

if.then8.if.end60_crit_edge:                      ; preds = %if.then8
  br label %if.end60

land.lhs.true:                                    ; preds = %if.then8
  %tmp30 = load i8*, i8** %cp, align 8
  %tmp31 = load i8, i8* %tmp30, align 1
  %conv15 = sext i8 %tmp31 to i32
  %cmp16 = icmp sle i32 %conv15, 57
  br i1 %cmp16, label %if.then18, label %land.lhs.true.if.end60_crit_edge

land.lhs.true.if.end60_crit_edge:                 ; preds = %land.lhs.true
  br label %if.end60

if.then18:                                        ; preds = %land.lhs.true
  %tmp32 = load i8*, i8** %cp, align 8
  store i8* %tmp32, i8** %np, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then18
  %tmp33 = load i8*, i8** %np, align 8
  %tmp34 = load i8, i8* %tmp33, align 1
  %conv19 = sext i8 %tmp34 to i32
  %cmp20 = icmp sge i32 %conv19, 48
  br i1 %cmp20, label %land.lhs.true22, label %for.cond.for.end_crit_edge

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  br label %for.end

land.lhs.true22:                                  ; preds = %for.cond
  %tmp35 = load i8*, i8** %np, align 8
  %tmp36 = load i8, i8* %tmp35, align 1
  %conv23 = sext i8 %tmp36 to i32
  %cmp24 = icmp sle i32 %conv23, 57
  br i1 %cmp24, label %for.body, label %land.lhs.true22.for.end_crit_edge

land.lhs.true22.for.end_crit_edge:                ; preds = %land.lhs.true22
  br label %for.end

for.body:                                         ; preds = %land.lhs.true22
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %tmp37 = load i8*, i8** %np, align 8
  %incdec.ptr26 = getelementptr inbounds i8, i8* %tmp37, i32 1
  store i8* %incdec.ptr26, i8** %np, align 8
  br label %for.cond

for.end:                                          ; preds = %land.lhs.true22.for.end_crit_edge, %for.cond.for.end_crit_edge
  %tmp38 = load i8*, i8** %np, align 8
  %tmp39 = load i8, i8* %tmp38, align 1
  %conv27 = sext i8 %tmp39 to i32
  %cmp28 = icmp eq i32 %conv27, 36
  br i1 %cmp28, label %if.then30, label %for.end.if.end59_crit_edge

for.end.if.end59_crit_edge:                       ; preds = %for.end
  br label %if.end59

if.then30:                                        ; preds = %for.end
  store i64 0, i64* %n, align 8
  %tmp40 = load i8*, i8** %cp, align 8
  store i8* %tmp40, i8** %np, align 8
  br label %for.cond31

for.cond31:                                       ; preds = %for.inc46, %if.then30
  %tmp41 = load i8*, i8** %np, align 8
  %tmp42 = load i8, i8* %tmp41, align 1
  %conv32 = sext i8 %tmp42 to i32
  %cmp33 = icmp sge i32 %conv32, 48
  br i1 %cmp33, label %land.lhs.true35, label %for.cond31.for.end48_crit_edge

for.cond31.for.end48_crit_edge:                   ; preds = %for.cond31
  br label %for.end48

land.lhs.true35:                                  ; preds = %for.cond31
  %tmp43 = load i8*, i8** %np, align 8
  %tmp44 = load i8, i8* %tmp43, align 1
  %conv36 = sext i8 %tmp44 to i32
  %cmp37 = icmp sle i32 %conv36, 57
  br i1 %cmp37, label %for.body39, label %land.lhs.true35.for.end48_crit_edge

land.lhs.true35.for.end48_crit_edge:              ; preds = %land.lhs.true35
  br label %for.end48

for.body39:                                       ; preds = %land.lhs.true35
  %tmp45 = load i64, i64* %n, align 8
  %cmp40 = icmp ule i64 %tmp45, 1844674407370955161
  br i1 %cmp40, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body39
  %tmp46 = load i64, i64* %n, align 8
  %mul42 = mul i64 %tmp46, 10
  store i64 %mul42, i64* %mul42.reg2mem
  %mul42.reload = load i64, i64* %mul42.reg2mem
  store i64 %mul42.reload, i64* %cond.reg2mem
  br label %cond.end

cond.false:                                       ; preds = %for.body39
  store i64 -1, i64* %cond.reg2mem
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond.reload = load i64, i64* %cond.reg2mem
  %tmp47 = load i8*, i8** %np, align 8
  %tmp48 = load i8, i8* %tmp47, align 1
  %conv43 = sext i8 %tmp48 to i32
  %sub = sub nsw i32 %conv43, 48
  %conv44 = sext i32 %sub to i64
  %call45 = call i64 @xsum152(i64 %cond.reload, i64 %conv44) #13
  store i64 %call45, i64* %n, align 8
  br label %for.inc46

for.inc46:                                        ; preds = %cond.end
  %tmp49 = load i8*, i8** %np, align 8
  %incdec.ptr47 = getelementptr inbounds i8, i8* %tmp49, i32 1
  store i8* %incdec.ptr47, i8** %np, align 8
  br label %for.cond31

for.end48:                                        ; preds = %land.lhs.true35.for.end48_crit_edge, %for.cond31.for.end48_crit_edge
  %tmp50 = load i64, i64* %n, align 8
  %cmp49 = icmp eq i64 %tmp50, 0
  br i1 %cmp49, label %if.then51, label %if.end52

if.then51:                                        ; preds = %for.end48
  br label %error

if.end52:                                         ; preds = %for.end48
  %tmp51 = load i64, i64* %n, align 8
  %cmp53 = icmp eq i64 %tmp51, -1
  br i1 %cmp53, label %if.then55, label %if.end56

if.then55:                                        ; preds = %if.end52
  br label %error

if.end56:                                         ; preds = %if.end52
  %tmp52 = load i64, i64* %n, align 8
  %sub57 = sub i64 %tmp52, 1
  store i64 %sub57, i64* %arg_index, align 8
  %tmp53 = load i8*, i8** %np, align 8
  %add.ptr58 = getelementptr inbounds i8, i8* %tmp53, i64 1
  store i8* %add.ptr58, i8** %cp, align 8
  br label %if.end59

if.end59:                                         ; preds = %for.end.if.end59_crit_edge, %if.end56
  br label %if.end60

if.end60:                                         ; preds = %land.lhs.true.if.end60_crit_edge, %if.then8.if.end60_crit_edge, %if.end59
  br label %for.cond61

for.cond61:                                       ; preds = %if.end113, %if.end60
  %tmp54 = load i8*, i8** %cp, align 8
  %tmp55 = load i8, i8* %tmp54, align 1
  %conv62 = sext i8 %tmp55 to i32
  %cmp63 = icmp eq i32 %conv62, 39
  br i1 %cmp63, label %if.then65, label %if.else

if.then65:                                        ; preds = %for.cond61
  %tmp56 = load %struct.char_directive*, %struct.char_directive** %dp, align 8
  %flags66 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %tmp56, i32 0, i32 2
  %tmp57 = load i32, i32* %flags66, align 4
  %or = or i32 %tmp57, 1
  store i32 %or, i32* %flags66, align 4
  %tmp58 = load i8*, i8** %cp, align 8
  %incdec.ptr67 = getelementptr inbounds i8, i8* %tmp58, i32 1
  store i8* %incdec.ptr67, i8** %cp, align 8
  br label %if.end113

if.else:                                          ; preds = %for.cond61
  %tmp59 = load i8*, i8** %cp, align 8
  %tmp60 = load i8, i8* %tmp59, align 1
  %conv68 = sext i8 %tmp60 to i32
  %cmp69 = icmp eq i32 %conv68, 45
  br i1 %cmp69, label %if.then71, label %if.else75

if.then71:                                        ; preds = %if.else
  %tmp61 = load %struct.char_directive*, %struct.char_directive** %dp, align 8
  %flags72 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %tmp61, i32 0, i32 2
  %tmp62 = load i32, i32* %flags72, align 4
  %or73 = or i32 %tmp62, 2
  store i32 %or73, i32* %flags72, align 4
  %tmp63 = load i8*, i8** %cp, align 8
  %incdec.ptr74 = getelementptr inbounds i8, i8* %tmp63, i32 1
  store i8* %incdec.ptr74, i8** %cp, align 8
  br label %if.end112

if.else75:                                        ; preds = %if.else
  %tmp64 = load i8*, i8** %cp, align 8
  %tmp65 = load i8, i8* %tmp64, align 1
  %conv76 = sext i8 %tmp65 to i32
  %cmp77 = icmp eq i32 %conv76, 43
  br i1 %cmp77, label %if.then79, label %if.else83

if.then79:                                        ; preds = %if.else75
  %tmp66 = load %struct.char_directive*, %struct.char_directive** %dp, align 8
  %flags80 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %tmp66, i32 0, i32 2
  %tmp67 = load i32, i32* %flags80, align 4
  %or81 = or i32 %tmp67, 4
  store i32 %or81, i32* %flags80, align 4
  %tmp68 = load i8*, i8** %cp, align 8
  %incdec.ptr82 = getelementptr inbounds i8, i8* %tmp68, i32 1
  store i8* %incdec.ptr82, i8** %cp, align 8
  br label %if.end111

if.else83:                                        ; preds = %if.else75
  %tmp69 = load i8*, i8** %cp, align 8
  %tmp70 = load i8, i8* %tmp69, align 1
  %conv84 = sext i8 %tmp70 to i32
  %cmp85 = icmp eq i32 %conv84, 32
  br i1 %cmp85, label %if.then87, label %if.else91

if.then87:                                        ; preds = %if.else83
  %tmp71 = load %struct.char_directive*, %struct.char_directive** %dp, align 8
  %flags88 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %tmp71, i32 0, i32 2
  %tmp72 = load i32, i32* %flags88, align 4
  %or89 = or i32 %tmp72, 8
  store i32 %or89, i32* %flags88, align 4
  %tmp73 = load i8*, i8** %cp, align 8
  %incdec.ptr90 = getelementptr inbounds i8, i8* %tmp73, i32 1
  store i8* %incdec.ptr90, i8** %cp, align 8
  br label %if.end110

if.else91:                                        ; preds = %if.else83
  %tmp74 = load i8*, i8** %cp, align 8
  %tmp75 = load i8, i8* %tmp74, align 1
  %conv92 = sext i8 %tmp75 to i32
  %cmp93 = icmp eq i32 %conv92, 35
  br i1 %cmp93, label %if.then95, label %if.else99

if.then95:                                        ; preds = %if.else91
  %tmp76 = load %struct.char_directive*, %struct.char_directive** %dp, align 8
  %flags96 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %tmp76, i32 0, i32 2
  %tmp77 = load i32, i32* %flags96, align 4
  %or97 = or i32 %tmp77, 16
  store i32 %or97, i32* %flags96, align 4
  %tmp78 = load i8*, i8** %cp, align 8
  %incdec.ptr98 = getelementptr inbounds i8, i8* %tmp78, i32 1
  store i8* %incdec.ptr98, i8** %cp, align 8
  br label %if.end109

if.else99:                                        ; preds = %if.else91
  %tmp79 = load i8*, i8** %cp, align 8
  %tmp80 = load i8, i8* %tmp79, align 1
  %conv100 = sext i8 %tmp80 to i32
  %cmp101 = icmp eq i32 %conv100, 48
  br i1 %cmp101, label %if.then103, label %if.else107

if.then103:                                       ; preds = %if.else99
  %tmp81 = load %struct.char_directive*, %struct.char_directive** %dp, align 8
  %flags104 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %tmp81, i32 0, i32 2
  %tmp82 = load i32, i32* %flags104, align 4
  %or105 = or i32 %tmp82, 32
  store i32 %or105, i32* %flags104, align 4
  %tmp83 = load i8*, i8** %cp, align 8
  %incdec.ptr106 = getelementptr inbounds i8, i8* %tmp83, i32 1
  store i8* %incdec.ptr106, i8** %cp, align 8
  br label %if.end108

if.else107:                                       ; preds = %if.else99
  br label %for.end114

if.end108:                                        ; preds = %if.then103
  br label %if.end109

if.end109:                                        ; preds = %if.end108, %if.then95
  br label %if.end110

if.end110:                                        ; preds = %if.end109, %if.then87
  br label %if.end111

if.end111:                                        ; preds = %if.end110, %if.then79
  br label %if.end112

if.end112:                                        ; preds = %if.end111, %if.then71
  br label %if.end113

if.end113:                                        ; preds = %if.end112, %if.then65
  br label %for.cond61

for.end114:                                       ; preds = %if.else107
  %tmp84 = load i8*, i8** %cp, align 8
  %tmp85 = load i8, i8* %tmp84, align 1
  %conv115 = sext i8 %tmp85 to i32
  %cmp116 = icmp eq i32 %conv115, 42
  br i1 %cmp116, label %if.then118, label %if.else268

if.then118:                                       ; preds = %for.end114
  %tmp86 = load i8*, i8** %cp, align 8
  %tmp87 = load %struct.char_directive*, %struct.char_directive** %dp, align 8
  %width_start119 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %tmp87, i32 0, i32 3
  store i8* %tmp86, i8** %width_start119, align 8
  %tmp88 = load i8*, i8** %cp, align 8
  %incdec.ptr120 = getelementptr inbounds i8, i8* %tmp88, i32 1
  store i8* %incdec.ptr120, i8** %cp, align 8
  %tmp89 = load i8*, i8** %cp, align 8
  %tmp90 = load %struct.char_directive*, %struct.char_directive** %dp, align 8
  %width_end121 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %tmp90, i32 0, i32 4
  store i8* %tmp89, i8** %width_end121, align 8
  %tmp91 = load i64, i64* %max_width_length, align 8
  %cmp122 = icmp ult i64 %tmp91, 1
  br i1 %cmp122, label %if.then124, label %if.then118.if.end125_crit_edge

if.then118.if.end125_crit_edge:                   ; preds = %if.then118
  br label %if.end125

if.then124:                                       ; preds = %if.then118
  store i64 1, i64* %max_width_length, align 8
  br label %if.end125

if.end125:                                        ; preds = %if.then118.if.end125_crit_edge, %if.then124
  %tmp92 = load i8*, i8** %cp, align 8
  %tmp93 = load i8, i8* %tmp92, align 1
  %conv126 = sext i8 %tmp93 to i32
  %cmp127 = icmp sge i32 %conv126, 48
  br i1 %cmp127, label %land.lhs.true129, label %if.end125.if.end187_crit_edge

if.end125.if.end187_crit_edge:                    ; preds = %if.end125
  br label %if.end187

land.lhs.true129:                                 ; preds = %if.end125
  %tmp94 = load i8*, i8** %cp, align 8
  %tmp95 = load i8, i8* %tmp94, align 1
  %conv130 = sext i8 %tmp95 to i32
  %cmp131 = icmp sle i32 %conv130, 57
  br i1 %cmp131, label %if.then133, label %land.lhs.true129.if.end187_crit_edge

land.lhs.true129.if.end187_crit_edge:             ; preds = %land.lhs.true129
  br label %if.end187

if.then133:                                       ; preds = %land.lhs.true129
  %tmp96 = load i8*, i8** %cp, align 8
  store i8* %tmp96, i8** %np134, align 8
  br label %for.cond135

for.cond135:                                      ; preds = %for.inc144, %if.then133
  %tmp97 = load i8*, i8** %np134, align 8
  %tmp98 = load i8, i8* %tmp97, align 1
  %conv136 = sext i8 %tmp98 to i32
  %cmp137 = icmp sge i32 %conv136, 48
  br i1 %cmp137, label %land.lhs.true139, label %for.cond135.for.end146_crit_edge

for.cond135.for.end146_crit_edge:                 ; preds = %for.cond135
  br label %for.end146

land.lhs.true139:                                 ; preds = %for.cond135
  %tmp99 = load i8*, i8** %np134, align 8
  %tmp100 = load i8, i8* %tmp99, align 1
  %conv140 = sext i8 %tmp100 to i32
  %cmp141 = icmp sle i32 %conv140, 57
  br i1 %cmp141, label %for.body143, label %land.lhs.true139.for.end146_crit_edge

land.lhs.true139.for.end146_crit_edge:            ; preds = %land.lhs.true139
  br label %for.end146

for.body143:                                      ; preds = %land.lhs.true139
  br label %for.inc144

for.inc144:                                       ; preds = %for.body143
  %tmp101 = load i8*, i8** %np134, align 8
  %incdec.ptr145 = getelementptr inbounds i8, i8* %tmp101, i32 1
  store i8* %incdec.ptr145, i8** %np134, align 8
  br label %for.cond135

for.end146:                                       ; preds = %land.lhs.true139.for.end146_crit_edge, %for.cond135.for.end146_crit_edge
  %tmp102 = load i8*, i8** %np134, align 8
  %tmp103 = load i8, i8* %tmp102, align 1
  %conv147 = sext i8 %tmp103 to i32
  %cmp148 = icmp eq i32 %conv147, 36
  br i1 %cmp148, label %if.then150, label %for.end146.if.end186_crit_edge

for.end146.if.end186_crit_edge:                   ; preds = %for.end146
  br label %if.end186

if.then150:                                       ; preds = %for.end146
  store i64 0, i64* %n151, align 8
  %tmp104 = load i8*, i8** %cp, align 8
  store i8* %tmp104, i8** %np134, align 8
  br label %for.cond152

for.cond152:                                      ; preds = %for.inc172, %if.then150
  %tmp105 = load i8*, i8** %np134, align 8
  %tmp106 = load i8, i8* %tmp105, align 1
  %conv153 = sext i8 %tmp106 to i32
  %cmp154 = icmp sge i32 %conv153, 48
  br i1 %cmp154, label %land.lhs.true156, label %for.cond152.for.end174_crit_edge

for.cond152.for.end174_crit_edge:                 ; preds = %for.cond152
  br label %for.end174

land.lhs.true156:                                 ; preds = %for.cond152
  %tmp107 = load i8*, i8** %np134, align 8
  %tmp108 = load i8, i8* %tmp107, align 1
  %conv157 = sext i8 %tmp108 to i32
  %cmp158 = icmp sle i32 %conv157, 57
  br i1 %cmp158, label %for.body160, label %land.lhs.true156.for.end174_crit_edge

land.lhs.true156.for.end174_crit_edge:            ; preds = %land.lhs.true156
  br label %for.end174

for.body160:                                      ; preds = %land.lhs.true156
  %tmp109 = load i64, i64* %n151, align 8
  %cmp161 = icmp ule i64 %tmp109, 1844674407370955161
  br i1 %cmp161, label %cond.true163, label %cond.false165

cond.true163:                                     ; preds = %for.body160
  %tmp110 = load i64, i64* %n151, align 8
  %mul164 = mul i64 %tmp110, 10
  store i64 %mul164, i64* %mul164.reg2mem
  %mul164.reload = load i64, i64* %mul164.reg2mem
  store i64 %mul164.reload, i64* %cond167.reg2mem
  br label %cond.end166

cond.false165:                                    ; preds = %for.body160
  store i64 -1, i64* %cond167.reg2mem
  br label %cond.end166

cond.end166:                                      ; preds = %cond.false165, %cond.true163
  %cond167.reload = load i64, i64* %cond167.reg2mem
  %tmp111 = load i8*, i8** %np134, align 8
  %tmp112 = load i8, i8* %tmp111, align 1
  %conv168 = sext i8 %tmp112 to i32
  %sub169 = sub nsw i32 %conv168, 48
  %conv170 = sext i32 %sub169 to i64
  %call171 = call i64 @xsum152(i64 %cond167.reload, i64 %conv170) #13
  store i64 %call171, i64* %n151, align 8
  br label %for.inc172

for.inc172:                                       ; preds = %cond.end166
  %tmp113 = load i8*, i8** %np134, align 8
  %incdec.ptr173 = getelementptr inbounds i8, i8* %tmp113, i32 1
  store i8* %incdec.ptr173, i8** %np134, align 8
  br label %for.cond152

for.end174:                                       ; preds = %land.lhs.true156.for.end174_crit_edge, %for.cond152.for.end174_crit_edge
  %tmp114 = load i64, i64* %n151, align 8
  %cmp175 = icmp eq i64 %tmp114, 0
  br i1 %cmp175, label %if.then177, label %if.end178

if.then177:                                       ; preds = %for.end174
  br label %error

if.end178:                                        ; preds = %for.end174
  %tmp115 = load i64, i64* %n151, align 8
  %cmp179 = icmp eq i64 %tmp115, -1
  br i1 %cmp179, label %if.then181, label %if.end182

if.then181:                                       ; preds = %if.end178
  br label %error

if.end182:                                        ; preds = %if.end178
  %tmp116 = load i64, i64* %n151, align 8
  %sub183 = sub i64 %tmp116, 1
  %tmp117 = load %struct.char_directive*, %struct.char_directive** %dp, align 8
  %width_arg_index184 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %tmp117, i32 0, i32 5
  store i64 %sub183, i64* %width_arg_index184, align 8
  %tmp118 = load i8*, i8** %np134, align 8
  %add.ptr185 = getelementptr inbounds i8, i8* %tmp118, i64 1
  store i8* %add.ptr185, i8** %cp, align 8
  br label %if.end186

if.end186:                                        ; preds = %for.end146.if.end186_crit_edge, %if.end182
  br label %if.end187

if.end187:                                        ; preds = %land.lhs.true129.if.end187_crit_edge, %if.end125.if.end187_crit_edge, %if.end186
  %tmp119 = load %struct.char_directive*, %struct.char_directive** %dp, align 8
  %width_arg_index188 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %tmp119, i32 0, i32 5
  %tmp120 = load i64, i64* %width_arg_index188, align 8
  %cmp189 = icmp eq i64 %tmp120, -1
  br i1 %cmp189, label %if.then191, label %if.end187.if.end198_crit_edge

if.end187.if.end198_crit_edge:                    ; preds = %if.end187
  br label %if.end198

if.then191:                                       ; preds = %if.end187
  %tmp121 = load i64, i64* %arg_posn, align 8
  %inc = add i64 %tmp121, 1
  store i64 %inc, i64* %arg_posn, align 8
  %tmp122 = load %struct.char_directive*, %struct.char_directive** %dp, align 8
  %width_arg_index192 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %tmp122, i32 0, i32 5
  store i64 %tmp121, i64* %width_arg_index192, align 8
  %tmp123 = load %struct.char_directive*, %struct.char_directive** %dp, align 8
  %width_arg_index193 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %tmp123, i32 0, i32 5
  %tmp124 = load i64, i64* %width_arg_index193, align 8
  %cmp194 = icmp eq i64 %tmp124, -1
  br i1 %cmp194, label %if.then196, label %if.end197

if.then196:                                       ; preds = %if.then191
  br label %error

if.end197:                                        ; preds = %if.then191
  br label %if.end198

if.end198:                                        ; preds = %if.end187.if.end198_crit_edge, %if.end197
  %tmp125 = load %struct.char_directive*, %struct.char_directive** %dp, align 8
  %width_arg_index200 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %tmp125, i32 0, i32 5
  %tmp126 = load i64, i64* %width_arg_index200, align 8
  store i64 %tmp126, i64* %n199, align 8
  %tmp127 = load i64, i64* %n199, align 8
  %tmp128 = load i64, i64* %a_allocated, align 8
  %cmp201 = icmp uge i64 %tmp127, %tmp128
  br i1 %cmp201, label %if.then203, label %if.end198.if.end240_crit_edge

if.end198.if.end240_crit_edge:                    ; preds = %if.end198
  br label %if.end240

if.then203:                                       ; preds = %if.end198
  %tmp129 = load i64, i64* %a_allocated, align 8
  %cmp204 = icmp ule i64 %tmp129, 9223372036854775807
  br i1 %cmp204, label %cond.true206, label %cond.false208

cond.true206:                                     ; preds = %if.then203
  %tmp130 = load i64, i64* %a_allocated, align 8
  %mul207 = mul i64 %tmp130, 2
  store i64 %mul207, i64* %mul207.reg2mem
  %mul207.reload = load i64, i64* %mul207.reg2mem
  store i64 %mul207.reload, i64* %cond210.reg2mem
  br label %cond.end209

cond.false208:                                    ; preds = %if.then203
  store i64 -1, i64* %cond210.reg2mem
  br label %cond.end209

cond.end209:                                      ; preds = %cond.false208, %cond.true206
  %cond210.reload = load i64, i64* %cond210.reg2mem
  store i64 %cond210.reload, i64* %a_allocated, align 8
  %tmp131 = load i64, i64* %a_allocated, align 8
  %tmp132 = load i64, i64* %n199, align 8
  %cmp211 = icmp ule i64 %tmp131, %tmp132
  br i1 %cmp211, label %if.then213, label %cond.end209.if.end215_crit_edge

cond.end209.if.end215_crit_edge:                  ; preds = %cond.end209
  br label %if.end215

if.then213:                                       ; preds = %cond.end209
  %tmp133 = load i64, i64* %n199, align 8
  %call214 = call i64 @xsum152(i64 %tmp133, i64 1) #13
  store i64 %call214, i64* %a_allocated, align 8
  br label %if.end215

if.end215:                                        ; preds = %cond.end209.if.end215_crit_edge, %if.then213
  %tmp134 = load i64, i64* %a_allocated, align 8
  %cmp216 = icmp ule i64 %tmp134, 576460752303423487
  br i1 %cmp216, label %cond.true218, label %cond.false220

cond.true218:                                     ; preds = %if.end215
  %tmp135 = load i64, i64* %a_allocated, align 8
  %mul219 = mul i64 %tmp135, 32
  store i64 %mul219, i64* %mul219.reg2mem
  %mul219.reload = load i64, i64* %mul219.reg2mem
  store i64 %mul219.reload, i64* %cond222.reg2mem
  br label %cond.end221

cond.false220:                                    ; preds = %if.end215
  store i64 -1, i64* %cond222.reg2mem
  br label %cond.end221

cond.end221:                                      ; preds = %cond.false220, %cond.true218
  %cond222.reload = load i64, i64* %cond222.reg2mem
  store i64 %cond222.reload, i64* %memory_size, align 8
  %tmp136 = load i64, i64* %memory_size, align 8
  %cmp223 = icmp eq i64 %tmp136, -1
  br i1 %cmp223, label %if.then225, label %if.end226

if.then225:                                       ; preds = %cond.end221
  br label %out_of_memory

if.end226:                                        ; preds = %cond.end221
  %tmp137 = load %struct.arguments*, %struct.arguments** %a.addr, align 8
  %arg227 = getelementptr inbounds %struct.arguments, %struct.arguments* %tmp137, i32 0, i32 1
  %tmp138 = load %struct.argument*, %struct.argument** %arg227, align 8
  %tobool = icmp ne %struct.argument* %tmp138, null
  br i1 %tobool, label %cond.true228, label %cond.false231

cond.true228:                                     ; preds = %if.end226
  %tmp139 = load %struct.arguments*, %struct.arguments** %a.addr, align 8
  %arg229 = getelementptr inbounds %struct.arguments, %struct.arguments* %tmp139, i32 0, i32 1
  %tmp140 = load %struct.argument*, %struct.argument** %arg229, align 8
  %tmp141 = bitcast %struct.argument* %tmp140 to i8*
  %tmp142 = load i64, i64* %memory_size, align 8
  %call230 = call i8* @realloc(i8* %tmp141, i64 %tmp142) #8
  store i8* %call230, i8** %call230.reg2mem
  %call230.reload = load i8*, i8** %call230.reg2mem
  store i8* %call230.reload, i8** %cond234.reg2mem
  br label %cond.end233

cond.false231:                                    ; preds = %if.end226
  %tmp143 = load i64, i64* %memory_size, align 8
  %call232 = call noalias i8* @malloc(i64 %tmp143) #8
  store i8* %call232, i8** %call232.reg2mem
  %call232.reload = load i8*, i8** %call232.reg2mem
  store i8* %call232.reload, i8** %cond234.reg2mem
  br label %cond.end233

cond.end233:                                      ; preds = %cond.false231, %cond.true228
  %cond234.reload = load i8*, i8** %cond234.reg2mem
  %tmp144 = bitcast i8* %cond234.reload to %struct.argument*
  store %struct.argument* %tmp144, %struct.argument** %memory, align 8
  %tmp145 = load %struct.argument*, %struct.argument** %memory, align 8
  %cmp235 = icmp eq %struct.argument* %tmp145, null
  br i1 %cmp235, label %if.then237, label %if.end238

if.then237:                                       ; preds = %cond.end233
  br label %out_of_memory

if.end238:                                        ; preds = %cond.end233
  %tmp146 = load %struct.argument*, %struct.argument** %memory, align 8
  %tmp147 = load %struct.arguments*, %struct.arguments** %a.addr, align 8
  %arg239 = getelementptr inbounds %struct.arguments, %struct.arguments* %tmp147, i32 0, i32 1
  store %struct.argument* %tmp146, %struct.argument** %arg239, align 8
  br label %if.end240

if.end240:                                        ; preds = %if.end198.if.end240_crit_edge, %if.end238
  br label %while.cond241

while.cond241:                                    ; preds = %while.body245, %if.end240
  %tmp148 = load %struct.arguments*, %struct.arguments** %a.addr, align 8
  %count242 = getelementptr inbounds %struct.arguments, %struct.arguments* %tmp148, i32 0, i32 0
  %tmp149 = load i64, i64* %count242, align 8
  %tmp150 = load i64, i64* %n199, align 8
  %cmp243 = icmp ule i64 %tmp149, %tmp150
  br i1 %cmp243, label %while.body245, label %while.end

while.body245:                                    ; preds = %while.cond241
  %tmp151 = load %struct.arguments*, %struct.arguments** %a.addr, align 8
  %count246 = getelementptr inbounds %struct.arguments, %struct.arguments* %tmp151, i32 0, i32 0
  %tmp152 = load i64, i64* %count246, align 8
  %inc247 = add i64 %tmp152, 1
  store i64 %inc247, i64* %count246, align 8
  %tmp153 = load %struct.arguments*, %struct.arguments** %a.addr, align 8
  %arg248 = getelementptr inbounds %struct.arguments, %struct.arguments* %tmp153, i32 0, i32 1
  %tmp154 = load %struct.argument*, %struct.argument** %arg248, align 8
  %arrayidx249 = getelementptr inbounds %struct.argument, %struct.argument* %tmp154, i64 %tmp152
  %type = getelementptr inbounds %struct.argument, %struct.argument* %arrayidx249, i32 0, i32 0
  store i32 0, i32* %type, align 4
  br label %while.cond241

while.end:                                        ; preds = %while.cond241
  %tmp155 = load i64, i64* %n199, align 8
  %tmp156 = load %struct.arguments*, %struct.arguments** %a.addr, align 8
  %arg250 = getelementptr inbounds %struct.arguments, %struct.arguments* %tmp156, i32 0, i32 1
  %tmp157 = load %struct.argument*, %struct.argument** %arg250, align 8
  %arrayidx251 = getelementptr inbounds %struct.argument, %struct.argument* %tmp157, i64 %tmp155
  %type252 = getelementptr inbounds %struct.argument, %struct.argument* %arrayidx251, i32 0, i32 0
  %tmp158 = load i32, i32* %type252, align 4
  %cmp253 = icmp eq i32 %tmp158, 0
  br i1 %cmp253, label %if.then255, label %if.else259

if.then255:                                       ; preds = %while.end
  %tmp159 = load i64, i64* %n199, align 8
  %tmp160 = load %struct.arguments*, %struct.arguments** %a.addr, align 8
  %arg256 = getelementptr inbounds %struct.arguments, %struct.arguments* %tmp160, i32 0, i32 1
  %tmp161 = load %struct.argument*, %struct.argument** %arg256, align 8
  %arrayidx257 = getelementptr inbounds %struct.argument, %struct.argument* %tmp161, i64 %tmp159
  %type258 = getelementptr inbounds %struct.argument, %struct.argument* %arrayidx257, i32 0, i32 0
  store i32 5, i32* %type258, align 4
  br label %if.end267

if.else259:                                       ; preds = %while.end
  %tmp162 = load i64, i64* %n199, align 8
  %tmp163 = load %struct.arguments*, %struct.arguments** %a.addr, align 8
  %arg260 = getelementptr inbounds %struct.arguments, %struct.arguments* %tmp163, i32 0, i32 1
  %tmp164 = load %struct.argument*, %struct.argument** %arg260, align 8
  %arrayidx261 = getelementptr inbounds %struct.argument, %struct.argument* %tmp164, i64 %tmp162
  %type262 = getelementptr inbounds %struct.argument, %struct.argument* %arrayidx261, i32 0, i32 0
  %tmp165 = load i32, i32* %type262, align 4
  %cmp263 = icmp ne i32 %tmp165, 5
  br i1 %cmp263, label %if.then265, label %if.end266

if.then265:                                       ; preds = %if.else259
  br label %error

if.end266:                                        ; preds = %if.else259
  br label %if.end267

if.end267:                                        ; preds = %if.end266, %if.then255
  br label %if.end298

if.else268:                                       ; preds = %for.end114
  %tmp166 = load i8*, i8** %cp, align 8
  %tmp167 = load i8, i8* %tmp166, align 1
  %conv269 = sext i8 %tmp167 to i32
  %cmp270 = icmp sge i32 %conv269, 48
  br i1 %cmp270, label %land.lhs.true272, label %if.else268.if.end297_crit_edge

if.else268.if.end297_crit_edge:                   ; preds = %if.else268
  br label %if.end297

land.lhs.true272:                                 ; preds = %if.else268
  %tmp168 = load i8*, i8** %cp, align 8
  %tmp169 = load i8, i8* %tmp168, align 1
  %conv273 = sext i8 %tmp169 to i32
  %cmp274 = icmp sle i32 %conv273, 57
  br i1 %cmp274, label %if.then276, label %land.lhs.true272.if.end297_crit_edge

land.lhs.true272.if.end297_crit_edge:             ; preds = %land.lhs.true272
  br label %if.end297

if.then276:                                       ; preds = %land.lhs.true272
  %tmp170 = load i8*, i8** %cp, align 8
  %tmp171 = load %struct.char_directive*, %struct.char_directive** %dp, align 8
  %width_start277 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %tmp171, i32 0, i32 3
  store i8* %tmp170, i8** %width_start277, align 8
  br label %for.cond278

for.cond278:                                      ; preds = %for.inc287, %if.then276
  %tmp172 = load i8*, i8** %cp, align 8
  %tmp173 = load i8, i8* %tmp172, align 1
  %conv279 = sext i8 %tmp173 to i32
  %cmp280 = icmp sge i32 %conv279, 48
  br i1 %cmp280, label %land.lhs.true282, label %for.cond278.for.end289_crit_edge

for.cond278.for.end289_crit_edge:                 ; preds = %for.cond278
  br label %for.end289

land.lhs.true282:                                 ; preds = %for.cond278
  %tmp174 = load i8*, i8** %cp, align 8
  %tmp175 = load i8, i8* %tmp174, align 1
  %conv283 = sext i8 %tmp175 to i32
  %cmp284 = icmp sle i32 %conv283, 57
  br i1 %cmp284, label %for.body286, label %land.lhs.true282.for.end289_crit_edge

land.lhs.true282.for.end289_crit_edge:            ; preds = %land.lhs.true282
  br label %for.end289

for.body286:                                      ; preds = %land.lhs.true282
  br label %for.inc287

for.inc287:                                       ; preds = %for.body286
  %tmp176 = load i8*, i8** %cp, align 8
  %incdec.ptr288 = getelementptr inbounds i8, i8* %tmp176, i32 1
  store i8* %incdec.ptr288, i8** %cp, align 8
  br label %for.cond278

for.end289:                                       ; preds = %land.lhs.true282.for.end289_crit_edge, %for.cond278.for.end289_crit_edge
  %tmp177 = load i8*, i8** %cp, align 8
  %tmp178 = load %struct.char_directive*, %struct.char_directive** %dp, align 8
  %width_end290 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %tmp178, i32 0, i32 4
  store i8* %tmp177, i8** %width_end290, align 8
  %tmp179 = load %struct.char_directive*, %struct.char_directive** %dp, align 8
  %width_end291 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %tmp179, i32 0, i32 4
  %tmp180 = load i8*, i8** %width_end291, align 8
  %tmp181 = load %struct.char_directive*, %struct.char_directive** %dp, align 8
  %width_start292 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %tmp181, i32 0, i32 3
  %tmp182 = load i8*, i8** %width_start292, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %tmp180 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %tmp182 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  store i64 %sub.ptr.sub, i64* %width_length, align 8
  %tmp183 = load i64, i64* %max_width_length, align 8
  %tmp184 = load i64, i64* %width_length, align 8
  %cmp293 = icmp ult i64 %tmp183, %tmp184
  br i1 %cmp293, label %if.then295, label %for.end289.if.end296_crit_edge

for.end289.if.end296_crit_edge:                   ; preds = %for.end289
  br label %if.end296

if.then295:                                       ; preds = %for.end289
  %tmp185 = load i64, i64* %width_length, align 8
  store i64 %tmp185, i64* %max_width_length, align 8
  br label %if.end296

if.end296:                                        ; preds = %for.end289.if.end296_crit_edge, %if.then295
  br label %if.end297

if.end297:                                        ; preds = %land.lhs.true272.if.end297_crit_edge, %if.else268.if.end297_crit_edge, %if.end296
  br label %if.end298

if.end298:                                        ; preds = %if.end297, %if.end267
  %tmp186 = load i8*, i8** %cp, align 8
  %tmp187 = load i8, i8* %tmp186, align 1
  %conv299 = sext i8 %tmp187 to i32
  %cmp300 = icmp eq i32 %conv299, 46
  br i1 %cmp300, label %if.then302, label %if.end298.if.end490_crit_edge

if.end298.if.end490_crit_edge:                    ; preds = %if.end298
  br label %if.end490

if.then302:                                       ; preds = %if.end298
  %tmp188 = load i8*, i8** %cp, align 8
  %incdec.ptr303 = getelementptr inbounds i8, i8* %tmp188, i32 1
  store i8* %incdec.ptr303, i8** %cp, align 8
  %tmp189 = load i8*, i8** %cp, align 8
  %tmp190 = load i8, i8* %tmp189, align 1
  %conv304 = sext i8 %tmp190 to i32
  %cmp305 = icmp eq i32 %conv304, 42
  br i1 %cmp305, label %if.then307, label %if.else464

if.then307:                                       ; preds = %if.then302
  %tmp191 = load i8*, i8** %cp, align 8
  %add.ptr308 = getelementptr inbounds i8, i8* %tmp191, i64 -1
  %tmp192 = load %struct.char_directive*, %struct.char_directive** %dp, align 8
  %precision_start309 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %tmp192, i32 0, i32 6
  store i8* %add.ptr308, i8** %precision_start309, align 8
  %tmp193 = load i8*, i8** %cp, align 8
  %incdec.ptr310 = getelementptr inbounds i8, i8* %tmp193, i32 1
  store i8* %incdec.ptr310, i8** %cp, align 8
  %tmp194 = load i8*, i8** %cp, align 8
  %tmp195 = load %struct.char_directive*, %struct.char_directive** %dp, align 8
  %precision_end311 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %tmp195, i32 0, i32 7
  store i8* %tmp194, i8** %precision_end311, align 8
  %tmp196 = load i64, i64* %max_precision_length, align 8
  %cmp312 = icmp ult i64 %tmp196, 2
  br i1 %cmp312, label %if.then314, label %if.then307.if.end315_crit_edge

if.then307.if.end315_crit_edge:                   ; preds = %if.then307
  br label %if.end315

if.then314:                                       ; preds = %if.then307
  store i64 2, i64* %max_precision_length, align 8
  br label %if.end315

if.end315:                                        ; preds = %if.then307.if.end315_crit_edge, %if.then314
  %tmp197 = load i8*, i8** %cp, align 8
  %tmp198 = load i8, i8* %tmp197, align 1
  %conv316 = sext i8 %tmp198 to i32
  %cmp317 = icmp sge i32 %conv316, 48
  br i1 %cmp317, label %land.lhs.true319, label %if.end315.if.end377_crit_edge

if.end315.if.end377_crit_edge:                    ; preds = %if.end315
  br label %if.end377

land.lhs.true319:                                 ; preds = %if.end315
  %tmp199 = load i8*, i8** %cp, align 8
  %tmp200 = load i8, i8* %tmp199, align 1
  %conv320 = sext i8 %tmp200 to i32
  %cmp321 = icmp sle i32 %conv320, 57
  br i1 %cmp321, label %if.then323, label %land.lhs.true319.if.end377_crit_edge

land.lhs.true319.if.end377_crit_edge:             ; preds = %land.lhs.true319
  br label %if.end377

if.then323:                                       ; preds = %land.lhs.true319
  %tmp201 = load i8*, i8** %cp, align 8
  store i8* %tmp201, i8** %np324, align 8
  br label %for.cond325

for.cond325:                                      ; preds = %for.inc334, %if.then323
  %tmp202 = load i8*, i8** %np324, align 8
  %tmp203 = load i8, i8* %tmp202, align 1
  %conv326 = sext i8 %tmp203 to i32
  %cmp327 = icmp sge i32 %conv326, 48
  br i1 %cmp327, label %land.lhs.true329, label %for.cond325.for.end336_crit_edge

for.cond325.for.end336_crit_edge:                 ; preds = %for.cond325
  br label %for.end336

land.lhs.true329:                                 ; preds = %for.cond325
  %tmp204 = load i8*, i8** %np324, align 8
  %tmp205 = load i8, i8* %tmp204, align 1
  %conv330 = sext i8 %tmp205 to i32
  %cmp331 = icmp sle i32 %conv330, 57
  br i1 %cmp331, label %for.body333, label %land.lhs.true329.for.end336_crit_edge

land.lhs.true329.for.end336_crit_edge:            ; preds = %land.lhs.true329
  br label %for.end336

for.body333:                                      ; preds = %land.lhs.true329
  br label %for.inc334

for.inc334:                                       ; preds = %for.body333
  %tmp206 = load i8*, i8** %np324, align 8
  %incdec.ptr335 = getelementptr inbounds i8, i8* %tmp206, i32 1
  store i8* %incdec.ptr335, i8** %np324, align 8
  br label %for.cond325

for.end336:                                       ; preds = %land.lhs.true329.for.end336_crit_edge, %for.cond325.for.end336_crit_edge
  %tmp207 = load i8*, i8** %np324, align 8
  %tmp208 = load i8, i8* %tmp207, align 1
  %conv337 = sext i8 %tmp208 to i32
  %cmp338 = icmp eq i32 %conv337, 36
  br i1 %cmp338, label %if.then340, label %for.end336.if.end376_crit_edge

for.end336.if.end376_crit_edge:                   ; preds = %for.end336
  br label %if.end376

if.then340:                                       ; preds = %for.end336
  store i64 0, i64* %n341, align 8
  %tmp209 = load i8*, i8** %cp, align 8
  store i8* %tmp209, i8** %np324, align 8
  br label %for.cond342

for.cond342:                                      ; preds = %for.inc362, %if.then340
  %tmp210 = load i8*, i8** %np324, align 8
  %tmp211 = load i8, i8* %tmp210, align 1
  %conv343 = sext i8 %tmp211 to i32
  %cmp344 = icmp sge i32 %conv343, 48
  br i1 %cmp344, label %land.lhs.true346, label %for.cond342.for.end364_crit_edge

for.cond342.for.end364_crit_edge:                 ; preds = %for.cond342
  br label %for.end364

land.lhs.true346:                                 ; preds = %for.cond342
  %tmp212 = load i8*, i8** %np324, align 8
  %tmp213 = load i8, i8* %tmp212, align 1
  %conv347 = sext i8 %tmp213 to i32
  %cmp348 = icmp sle i32 %conv347, 57
  br i1 %cmp348, label %for.body350, label %land.lhs.true346.for.end364_crit_edge

land.lhs.true346.for.end364_crit_edge:            ; preds = %land.lhs.true346
  br label %for.end364

for.body350:                                      ; preds = %land.lhs.true346
  %tmp214 = load i64, i64* %n341, align 8
  %cmp351 = icmp ule i64 %tmp214, 1844674407370955161
  br i1 %cmp351, label %cond.true353, label %cond.false355

cond.true353:                                     ; preds = %for.body350
  %tmp215 = load i64, i64* %n341, align 8
  %mul354 = mul i64 %tmp215, 10
  store i64 %mul354, i64* %mul354.reg2mem
  %mul354.reload = load i64, i64* %mul354.reg2mem
  store i64 %mul354.reload, i64* %cond357.reg2mem
  br label %cond.end356

cond.false355:                                    ; preds = %for.body350
  store i64 -1, i64* %cond357.reg2mem
  br label %cond.end356

cond.end356:                                      ; preds = %cond.false355, %cond.true353
  %cond357.reload = load i64, i64* %cond357.reg2mem
  %tmp216 = load i8*, i8** %np324, align 8
  %tmp217 = load i8, i8* %tmp216, align 1
  %conv358 = sext i8 %tmp217 to i32
  %sub359 = sub nsw i32 %conv358, 48
  %conv360 = sext i32 %sub359 to i64
  %call361 = call i64 @xsum152(i64 %cond357.reload, i64 %conv360) #13
  store i64 %call361, i64* %n341, align 8
  br label %for.inc362

for.inc362:                                       ; preds = %cond.end356
  %tmp218 = load i8*, i8** %np324, align 8
  %incdec.ptr363 = getelementptr inbounds i8, i8* %tmp218, i32 1
  store i8* %incdec.ptr363, i8** %np324, align 8
  br label %for.cond342

for.end364:                                       ; preds = %land.lhs.true346.for.end364_crit_edge, %for.cond342.for.end364_crit_edge
  %tmp219 = load i64, i64* %n341, align 8
  %cmp365 = icmp eq i64 %tmp219, 0
  br i1 %cmp365, label %if.then367, label %if.end368

if.then367:                                       ; preds = %for.end364
  br label %error

if.end368:                                        ; preds = %for.end364
  %tmp220 = load i64, i64* %n341, align 8
  %cmp369 = icmp eq i64 %tmp220, -1
  br i1 %cmp369, label %if.then371, label %if.end372

if.then371:                                       ; preds = %if.end368
  br label %error

if.end372:                                        ; preds = %if.end368
  %tmp221 = load i64, i64* %n341, align 8
  %sub373 = sub i64 %tmp221, 1
  %tmp222 = load %struct.char_directive*, %struct.char_directive** %dp, align 8
  %precision_arg_index374 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %tmp222, i32 0, i32 8
  store i64 %sub373, i64* %precision_arg_index374, align 8
  %tmp223 = load i8*, i8** %np324, align 8
  %add.ptr375 = getelementptr inbounds i8, i8* %tmp223, i64 1
  store i8* %add.ptr375, i8** %cp, align 8
  br label %if.end376

if.end376:                                        ; preds = %for.end336.if.end376_crit_edge, %if.end372
  br label %if.end377

if.end377:                                        ; preds = %land.lhs.true319.if.end377_crit_edge, %if.end315.if.end377_crit_edge, %if.end376
  %tmp224 = load %struct.char_directive*, %struct.char_directive** %dp, align 8
  %precision_arg_index378 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %tmp224, i32 0, i32 8
  %tmp225 = load i64, i64* %precision_arg_index378, align 8
  %cmp379 = icmp eq i64 %tmp225, -1
  br i1 %cmp379, label %if.then381, label %if.end377.if.end389_crit_edge

if.end377.if.end389_crit_edge:                    ; preds = %if.end377
  br label %if.end389

if.then381:                                       ; preds = %if.end377
  %tmp226 = load i64, i64* %arg_posn, align 8
  %inc382 = add i64 %tmp226, 1
  store i64 %inc382, i64* %arg_posn, align 8
  %tmp227 = load %struct.char_directive*, %struct.char_directive** %dp, align 8
  %precision_arg_index383 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %tmp227, i32 0, i32 8
  store i64 %tmp226, i64* %precision_arg_index383, align 8
  %tmp228 = load %struct.char_directive*, %struct.char_directive** %dp, align 8
  %precision_arg_index384 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %tmp228, i32 0, i32 8
  %tmp229 = load i64, i64* %precision_arg_index384, align 8
  %cmp385 = icmp eq i64 %tmp229, -1
  br i1 %cmp385, label %if.then387, label %if.end388

if.then387:                                       ; preds = %if.then381
  br label %error

if.end388:                                        ; preds = %if.then381
  br label %if.end389

if.end389:                                        ; preds = %if.end377.if.end389_crit_edge, %if.end388
  %tmp230 = load %struct.char_directive*, %struct.char_directive** %dp, align 8
  %precision_arg_index391 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %tmp230, i32 0, i32 8
  %tmp231 = load i64, i64* %precision_arg_index391, align 8
  store i64 %tmp231, i64* %n390, align 8
  %tmp232 = load i64, i64* %n390, align 8
  %tmp233 = load i64, i64* %a_allocated, align 8
  %cmp392 = icmp uge i64 %tmp232, %tmp233
  br i1 %cmp392, label %if.then394, label %if.end389.if.end434_crit_edge

if.end389.if.end434_crit_edge:                    ; preds = %if.end389
  br label %if.end434

if.then394:                                       ; preds = %if.end389
  %tmp234 = load i64, i64* %a_allocated, align 8
  %cmp397 = icmp ule i64 %tmp234, 9223372036854775807
  br i1 %cmp397, label %cond.true399, label %cond.false401

cond.true399:                                     ; preds = %if.then394
  %tmp235 = load i64, i64* %a_allocated, align 8
  %mul400 = mul i64 %tmp235, 2
  store i64 %mul400, i64* %mul400.reg2mem
  %mul400.reload = load i64, i64* %mul400.reg2mem
  store i64 %mul400.reload, i64* %cond403.reg2mem
  br label %cond.end402

cond.false401:                                    ; preds = %if.then394
  store i64 -1, i64* %cond403.reg2mem
  br label %cond.end402

cond.end402:                                      ; preds = %cond.false401, %cond.true399
  %cond403.reload = load i64, i64* %cond403.reg2mem
  store i64 %cond403.reload, i64* %a_allocated, align 8
  %tmp236 = load i64, i64* %a_allocated, align 8
  %tmp237 = load i64, i64* %n390, align 8
  %cmp404 = icmp ule i64 %tmp236, %tmp237
  br i1 %cmp404, label %if.then406, label %cond.end402.if.end408_crit_edge

cond.end402.if.end408_crit_edge:                  ; preds = %cond.end402
  br label %if.end408

if.then406:                                       ; preds = %cond.end402
  %tmp238 = load i64, i64* %n390, align 8
  %call407 = call i64 @xsum152(i64 %tmp238, i64 1) #13
  store i64 %call407, i64* %a_allocated, align 8
  br label %if.end408

if.end408:                                        ; preds = %cond.end402.if.end408_crit_edge, %if.then406
  %tmp239 = load i64, i64* %a_allocated, align 8
  %cmp409 = icmp ule i64 %tmp239, 576460752303423487
  br i1 %cmp409, label %cond.true411, label %cond.false413

cond.true411:                                     ; preds = %if.end408
  %tmp240 = load i64, i64* %a_allocated, align 8
  %mul412 = mul i64 %tmp240, 32
  store i64 %mul412, i64* %mul412.reg2mem
  %mul412.reload = load i64, i64* %mul412.reg2mem
  store i64 %mul412.reload, i64* %cond415.reg2mem
  br label %cond.end414

cond.false413:                                    ; preds = %if.end408
  store i64 -1, i64* %cond415.reg2mem
  br label %cond.end414

cond.end414:                                      ; preds = %cond.false413, %cond.true411
  %cond415.reload = load i64, i64* %cond415.reg2mem
  store i64 %cond415.reload, i64* %memory_size395, align 8
  %tmp241 = load i64, i64* %memory_size395, align 8
  %cmp416 = icmp eq i64 %tmp241, -1
  br i1 %cmp416, label %if.then418, label %if.end419

if.then418:                                       ; preds = %cond.end414
  br label %out_of_memory

if.end419:                                        ; preds = %cond.end414
  %tmp242 = load %struct.arguments*, %struct.arguments** %a.addr, align 8
  %arg420 = getelementptr inbounds %struct.arguments, %struct.arguments* %tmp242, i32 0, i32 1
  %tmp243 = load %struct.argument*, %struct.argument** %arg420, align 8
  %tobool421 = icmp ne %struct.argument* %tmp243, null
  br i1 %tobool421, label %cond.true422, label %cond.false425

cond.true422:                                     ; preds = %if.end419
  %tmp244 = load %struct.arguments*, %struct.arguments** %a.addr, align 8
  %arg423 = getelementptr inbounds %struct.arguments, %struct.arguments* %tmp244, i32 0, i32 1
  %tmp245 = load %struct.argument*, %struct.argument** %arg423, align 8
  %tmp246 = bitcast %struct.argument* %tmp245 to i8*
  %tmp247 = load i64, i64* %memory_size395, align 8
  %call424 = call i8* @realloc(i8* %tmp246, i64 %tmp247) #8
  store i8* %call424, i8** %call424.reg2mem
  %call424.reload = load i8*, i8** %call424.reg2mem
  store i8* %call424.reload, i8** %cond428.reg2mem
  br label %cond.end427

cond.false425:                                    ; preds = %if.end419
  %tmp248 = load i64, i64* %memory_size395, align 8
  %call426 = call noalias i8* @malloc(i64 %tmp248) #8
  store i8* %call426, i8** %call426.reg2mem
  %call426.reload = load i8*, i8** %call426.reg2mem
  store i8* %call426.reload, i8** %cond428.reg2mem
  br label %cond.end427

cond.end427:                                      ; preds = %cond.false425, %cond.true422
  %cond428.reload = load i8*, i8** %cond428.reg2mem
  %tmp249 = bitcast i8* %cond428.reload to %struct.argument*
  store %struct.argument* %tmp249, %struct.argument** %memory396, align 8
  %tmp250 = load %struct.argument*, %struct.argument** %memory396, align 8
  %cmp429 = icmp eq %struct.argument* %tmp250, null
  br i1 %cmp429, label %if.then431, label %if.end432

if.then431:                                       ; preds = %cond.end427
  br label %out_of_memory

if.end432:                                        ; preds = %cond.end427
  %tmp251 = load %struct.argument*, %struct.argument** %memory396, align 8
  %tmp252 = load %struct.arguments*, %struct.arguments** %a.addr, align 8
  %arg433 = getelementptr inbounds %struct.arguments, %struct.arguments* %tmp252, i32 0, i32 1
  store %struct.argument* %tmp251, %struct.argument** %arg433, align 8
  br label %if.end434

if.end434:                                        ; preds = %if.end389.if.end434_crit_edge, %if.end432
  br label %while.cond435

while.cond435:                                    ; preds = %while.body439, %if.end434
  %tmp253 = load %struct.arguments*, %struct.arguments** %a.addr, align 8
  %count436 = getelementptr inbounds %struct.arguments, %struct.arguments* %tmp253, i32 0, i32 0
  %tmp254 = load i64, i64* %count436, align 8
  %tmp255 = load i64, i64* %n390, align 8
  %cmp437 = icmp ule i64 %tmp254, %tmp255
  br i1 %cmp437, label %while.body439, label %while.end445

while.body439:                                    ; preds = %while.cond435
  %tmp256 = load %struct.arguments*, %struct.arguments** %a.addr, align 8
  %count440 = getelementptr inbounds %struct.arguments, %struct.arguments* %tmp256, i32 0, i32 0
  %tmp257 = load i64, i64* %count440, align 8
  %inc441 = add i64 %tmp257, 1
  store i64 %inc441, i64* %count440, align 8
  %tmp258 = load %struct.arguments*, %struct.arguments** %a.addr, align 8
  %arg442 = getelementptr inbounds %struct.arguments, %struct.arguments* %tmp258, i32 0, i32 1
  %tmp259 = load %struct.argument*, %struct.argument** %arg442, align 8
  %arrayidx443 = getelementptr inbounds %struct.argument, %struct.argument* %tmp259, i64 %tmp257
  %type444 = getelementptr inbounds %struct.argument, %struct.argument* %arrayidx443, i32 0, i32 0
  store i32 0, i32* %type444, align 4
  br label %while.cond435

while.end445:                                     ; preds = %while.cond435
  %tmp260 = load i64, i64* %n390, align 8
  %tmp261 = load %struct.arguments*, %struct.arguments** %a.addr, align 8
  %arg446 = getelementptr inbounds %struct.arguments, %struct.arguments* %tmp261, i32 0, i32 1
  %tmp262 = load %struct.argument*, %struct.argument** %arg446, align 8
  %arrayidx447 = getelementptr inbounds %struct.argument, %struct.argument* %tmp262, i64 %tmp260
  %type448 = getelementptr inbounds %struct.argument, %struct.argument* %arrayidx447, i32 0, i32 0
  %tmp263 = load i32, i32* %type448, align 4
  %cmp449 = icmp eq i32 %tmp263, 0
  br i1 %cmp449, label %if.then451, label %if.else455

if.then451:                                       ; preds = %while.end445
  %tmp264 = load i64, i64* %n390, align 8
  %tmp265 = load %struct.arguments*, %struct.arguments** %a.addr, align 8
  %arg452 = getelementptr inbounds %struct.arguments, %struct.arguments* %tmp265, i32 0, i32 1
  %tmp266 = load %struct.argument*, %struct.argument** %arg452, align 8
  %arrayidx453 = getelementptr inbounds %struct.argument, %struct.argument* %tmp266, i64 %tmp264
  %type454 = getelementptr inbounds %struct.argument, %struct.argument* %arrayidx453, i32 0, i32 0
  store i32 5, i32* %type454, align 4
  br label %if.end463

if.else455:                                       ; preds = %while.end445
  %tmp267 = load i64, i64* %n390, align 8
  %tmp268 = load %struct.arguments*, %struct.arguments** %a.addr, align 8
  %arg456 = getelementptr inbounds %struct.arguments, %struct.arguments* %tmp268, i32 0, i32 1
  %tmp269 = load %struct.argument*, %struct.argument** %arg456, align 8
  %arrayidx457 = getelementptr inbounds %struct.argument, %struct.argument* %tmp269, i64 %tmp267
  %type458 = getelementptr inbounds %struct.argument, %struct.argument* %arrayidx457, i32 0, i32 0
  %tmp270 = load i32, i32* %type458, align 4
  %cmp459 = icmp ne i32 %tmp270, 5
  br i1 %cmp459, label %if.then461, label %if.end462

if.then461:                                       ; preds = %if.else455
  br label %error

if.end462:                                        ; preds = %if.else455
  br label %if.end463

if.end463:                                        ; preds = %if.end462, %if.then451
  br label %if.end489

if.else464:                                       ; preds = %if.then302
  %tmp271 = load i8*, i8** %cp, align 8
  %add.ptr465 = getelementptr inbounds i8, i8* %tmp271, i64 -1
  %tmp272 = load %struct.char_directive*, %struct.char_directive** %dp, align 8
  %precision_start466 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %tmp272, i32 0, i32 6
  store i8* %add.ptr465, i8** %precision_start466, align 8
  br label %for.cond467

for.cond467:                                      ; preds = %for.inc476, %if.else464
  %tmp273 = load i8*, i8** %cp, align 8
  %tmp274 = load i8, i8* %tmp273, align 1
  %conv468 = sext i8 %tmp274 to i32
  %cmp469 = icmp sge i32 %conv468, 48
  br i1 %cmp469, label %land.lhs.true471, label %for.cond467.for.end478_crit_edge

for.cond467.for.end478_crit_edge:                 ; preds = %for.cond467
  br label %for.end478

land.lhs.true471:                                 ; preds = %for.cond467
  %tmp275 = load i8*, i8** %cp, align 8
  %tmp276 = load i8, i8* %tmp275, align 1
  %conv472 = sext i8 %tmp276 to i32
  %cmp473 = icmp sle i32 %conv472, 57
  br i1 %cmp473, label %for.body475, label %land.lhs.true471.for.end478_crit_edge

land.lhs.true471.for.end478_crit_edge:            ; preds = %land.lhs.true471
  br label %for.end478

for.body475:                                      ; preds = %land.lhs.true471
  br label %for.inc476

for.inc476:                                       ; preds = %for.body475
  %tmp277 = load i8*, i8** %cp, align 8
  %incdec.ptr477 = getelementptr inbounds i8, i8* %tmp277, i32 1
  store i8* %incdec.ptr477, i8** %cp, align 8
  br label %for.cond467

for.end478:                                       ; preds = %land.lhs.true471.for.end478_crit_edge, %for.cond467.for.end478_crit_edge
  %tmp278 = load i8*, i8** %cp, align 8
  %tmp279 = load %struct.char_directive*, %struct.char_directive** %dp, align 8
  %precision_end479 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %tmp279, i32 0, i32 7
  store i8* %tmp278, i8** %precision_end479, align 8
  %tmp280 = load %struct.char_directive*, %struct.char_directive** %dp, align 8
  %precision_end480 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %tmp280, i32 0, i32 7
  %tmp281 = load i8*, i8** %precision_end480, align 8
  %tmp282 = load %struct.char_directive*, %struct.char_directive** %dp, align 8
  %precision_start481 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %tmp282, i32 0, i32 6
  %tmp283 = load i8*, i8** %precision_start481, align 8
  %sub.ptr.lhs.cast482 = ptrtoint i8* %tmp281 to i64
  %sub.ptr.rhs.cast483 = ptrtoint i8* %tmp283 to i64
  %sub.ptr.sub484 = sub i64 %sub.ptr.lhs.cast482, %sub.ptr.rhs.cast483
  store i64 %sub.ptr.sub484, i64* %precision_length, align 8
  %tmp284 = load i64, i64* %max_precision_length, align 8
  %tmp285 = load i64, i64* %precision_length, align 8
  %cmp485 = icmp ult i64 %tmp284, %tmp285
  br i1 %cmp485, label %if.then487, label %for.end478.if.end488_crit_edge

for.end478.if.end488_crit_edge:                   ; preds = %for.end478
  br label %if.end488

if.then487:                                       ; preds = %for.end478
  %tmp286 = load i64, i64* %precision_length, align 8
  store i64 %tmp286, i64* %max_precision_length, align 8
  br label %if.end488

if.end488:                                        ; preds = %for.end478.if.end488_crit_edge, %if.then487
  br label %if.end489

if.end489:                                        ; preds = %if.end488, %if.end463
  br label %if.end490

if.end490:                                        ; preds = %if.end298.if.end490_crit_edge, %if.end489
  store i32 0, i32* %flags492, align 4
  br label %for.cond493

for.cond493:                                      ; preds = %if.end543, %if.end490
  %tmp287 = load i8*, i8** %cp, align 8
  %tmp288 = load i8, i8* %tmp287, align 1
  %conv494 = sext i8 %tmp288 to i32
  %cmp495 = icmp eq i32 %conv494, 104
  br i1 %cmp495, label %if.then497, label %if.else500

if.then497:                                       ; preds = %for.cond493
  %tmp289 = load i32, i32* %flags492, align 4
  %and = and i32 %tmp289, 1
  %shl = shl i32 1, %and
  %tmp290 = load i32, i32* %flags492, align 4
  %or498 = or i32 %tmp290, %shl
  store i32 %or498, i32* %flags492, align 4
  %tmp291 = load i8*, i8** %cp, align 8
  %incdec.ptr499 = getelementptr inbounds i8, i8* %tmp291, i32 1
  store i8* %incdec.ptr499, i8** %cp, align 8
  br label %if.end543

if.else500:                                       ; preds = %for.cond493
  %tmp292 = load i8*, i8** %cp, align 8
  %tmp293 = load i8, i8* %tmp292, align 1
  %conv501 = sext i8 %tmp293 to i32
  %cmp502 = icmp eq i32 %conv501, 76
  br i1 %cmp502, label %if.then504, label %if.else507

if.then504:                                       ; preds = %if.else500
  %tmp294 = load i32, i32* %flags492, align 4
  %or505 = or i32 %tmp294, 4
  store i32 %or505, i32* %flags492, align 4
  %tmp295 = load i8*, i8** %cp, align 8
  %incdec.ptr506 = getelementptr inbounds i8, i8* %tmp295, i32 1
  store i8* %incdec.ptr506, i8** %cp, align 8
  br label %if.end542

if.else507:                                       ; preds = %if.else500
  %tmp296 = load i8*, i8** %cp, align 8
  %tmp297 = load i8, i8* %tmp296, align 1
  %conv508 = sext i8 %tmp297 to i32
  %cmp509 = icmp eq i32 %conv508, 108
  br i1 %cmp509, label %if.then511, label %if.else513

if.then511:                                       ; preds = %if.else507
  %tmp298 = load i32, i32* %flags492, align 4
  %add = add nsw i32 %tmp298, 8
  store i32 %add, i32* %flags492, align 4
  %tmp299 = load i8*, i8** %cp, align 8
  %incdec.ptr512 = getelementptr inbounds i8, i8* %tmp299, i32 1
  store i8* %incdec.ptr512, i8** %cp, align 8
  br label %if.end541

if.else513:                                       ; preds = %if.else507
  %tmp300 = load i8*, i8** %cp, align 8
  %tmp301 = load i8, i8* %tmp300, align 1
  %conv514 = sext i8 %tmp301 to i32
  %cmp515 = icmp eq i32 %conv514, 106
  br i1 %cmp515, label %if.then517, label %if.else520

if.then517:                                       ; preds = %if.else513
  %tmp302 = load i32, i32* %flags492, align 4
  %add518 = add nsw i32 %tmp302, 8
  store i32 %add518, i32* %flags492, align 4
  %tmp303 = load i8*, i8** %cp, align 8
  %incdec.ptr519 = getelementptr inbounds i8, i8* %tmp303, i32 1
  store i8* %incdec.ptr519, i8** %cp, align 8
  br label %if.end540

if.else520:                                       ; preds = %if.else513
  %tmp304 = load i8*, i8** %cp, align 8
  %tmp305 = load i8, i8* %tmp304, align 1
  %conv521 = sext i8 %tmp305 to i32
  %cmp522 = icmp eq i32 %conv521, 122
  br i1 %cmp522, label %if.else520.if.then527_crit_edge, label %lor.lhs.false

if.else520.if.then527_crit_edge:                  ; preds = %if.else520
  br label %if.then527

lor.lhs.false:                                    ; preds = %if.else520
  %tmp306 = load i8*, i8** %cp, align 8
  %tmp307 = load i8, i8* %tmp306, align 1
  %conv524 = sext i8 %tmp307 to i32
  %cmp525 = icmp eq i32 %conv524, 90
  br i1 %cmp525, label %lor.lhs.false.if.then527_crit_edge, label %if.else530

lor.lhs.false.if.then527_crit_edge:               ; preds = %lor.lhs.false
  br label %if.then527

if.then527:                                       ; preds = %lor.lhs.false.if.then527_crit_edge, %if.else520.if.then527_crit_edge
  %tmp308 = load i32, i32* %flags492, align 4
  %add528 = add nsw i32 %tmp308, 8
  store i32 %add528, i32* %flags492, align 4
  %tmp309 = load i8*, i8** %cp, align 8
  %incdec.ptr529 = getelementptr inbounds i8, i8* %tmp309, i32 1
  store i8* %incdec.ptr529, i8** %cp, align 8
  br label %if.end539

if.else530:                                       ; preds = %lor.lhs.false
  %tmp310 = load i8*, i8** %cp, align 8
  %tmp311 = load i8, i8* %tmp310, align 1
  %conv531 = sext i8 %tmp311 to i32
  %cmp532 = icmp eq i32 %conv531, 116
  br i1 %cmp532, label %if.then534, label %if.else537

if.then534:                                       ; preds = %if.else530
  %tmp312 = load i32, i32* %flags492, align 4
  %add535 = add nsw i32 %tmp312, 8
  store i32 %add535, i32* %flags492, align 4
  %tmp313 = load i8*, i8** %cp, align 8
  %incdec.ptr536 = getelementptr inbounds i8, i8* %tmp313, i32 1
  store i8* %incdec.ptr536, i8** %cp, align 8
  br label %if.end538

if.else537:                                       ; preds = %if.else530
  br label %for.end544

if.end538:                                        ; preds = %if.then534
  br label %if.end539

if.end539:                                        ; preds = %if.end538, %if.then527
  br label %if.end540

if.end540:                                        ; preds = %if.end539, %if.then517
  br label %if.end541

if.end541:                                        ; preds = %if.end540, %if.then511
  br label %if.end542

if.end542:                                        ; preds = %if.end541, %if.then504
  br label %if.end543

if.end543:                                        ; preds = %if.end542, %if.then497
  br label %for.cond493

for.end544:                                       ; preds = %if.else537
  %tmp314 = load i8*, i8** %cp, align 8
  %incdec.ptr545 = getelementptr inbounds i8, i8* %tmp314, i32 1
  store i8* %incdec.ptr545, i8** %cp, align 8
  %tmp315 = load i8, i8* %tmp314, align 1
  store i8 %tmp315, i8* %c, align 1
  %tmp316 = load i8, i8* %c, align 1
  %conv546 = sext i8 %tmp316 to i32
  switch i32 %conv546, label %sw.default [
    i32 100, label %for.end544.sw.bb_crit_edge
    i32 105, label %for.end544.sw.bb_crit_edge440
    i32 111, label %for.end544.sw.bb570_crit_edge
    i32 117, label %for.end544.sw.bb570_crit_edge441
    i32 120, label %for.end544.sw.bb570_crit_edge442
    i32 88, label %for.end544.sw.bb570_crit_edge443
    i32 102, label %for.end544.sw.bb594_crit_edge
    i32 70, label %for.end544.sw.bb594_crit_edge444
    i32 101, label %for.end544.sw.bb594_crit_edge445
    i32 69, label %for.end544.sw.bb594_crit_edge446
    i32 103, label %for.end544.sw.bb594_crit_edge447
    i32 71, label %for.end544.sw.bb594_crit_edge448
    i32 97, label %for.end544.sw.bb594_crit_edge449
    i32 65, label %for.end544.sw.bb594_crit_edge450
    i32 99, label %sw.bb603
    i32 67, label %sw.bb609
    i32 115, label %sw.bb610
    i32 83, label %sw.bb616
    i32 112, label %sw.bb617
    i32 110, label %sw.bb618
    i32 37, label %sw.bb642
  ]

for.end544.sw.bb594_crit_edge450:                 ; preds = %for.end544
  br label %sw.bb594

for.end544.sw.bb594_crit_edge449:                 ; preds = %for.end544
  br label %sw.bb594

for.end544.sw.bb594_crit_edge448:                 ; preds = %for.end544
  br label %sw.bb594

for.end544.sw.bb594_crit_edge447:                 ; preds = %for.end544
  br label %sw.bb594

for.end544.sw.bb594_crit_edge446:                 ; preds = %for.end544
  br label %sw.bb594

for.end544.sw.bb594_crit_edge445:                 ; preds = %for.end544
  br label %sw.bb594

for.end544.sw.bb594_crit_edge444:                 ; preds = %for.end544
  br label %sw.bb594

for.end544.sw.bb594_crit_edge:                    ; preds = %for.end544
  br label %sw.bb594

for.end544.sw.bb570_crit_edge443:                 ; preds = %for.end544
  br label %sw.bb570

for.end544.sw.bb570_crit_edge442:                 ; preds = %for.end544
  br label %sw.bb570

for.end544.sw.bb570_crit_edge441:                 ; preds = %for.end544
  br label %sw.bb570

for.end544.sw.bb570_crit_edge:                    ; preds = %for.end544
  br label %sw.bb570

for.end544.sw.bb_crit_edge440:                    ; preds = %for.end544
  br label %sw.bb

for.end544.sw.bb_crit_edge:                       ; preds = %for.end544
  br label %sw.bb

sw.bb:                                            ; preds = %for.end544.sw.bb_crit_edge440, %for.end544.sw.bb_crit_edge
  %tmp317 = load i32, i32* %flags492, align 4
  %cmp547 = icmp sge i32 %tmp317, 16
  br i1 %cmp547, label %sw.bb.if.then552_crit_edge, label %lor.lhs.false549

sw.bb.if.then552_crit_edge:                       ; preds = %sw.bb
  br label %if.then552

lor.lhs.false549:                                 ; preds = %sw.bb
  %tmp318 = load i32, i32* %flags492, align 4
  %and550 = and i32 %tmp318, 4
  %tobool551 = icmp ne i32 %and550, 0
  br i1 %tobool551, label %lor.lhs.false549.if.then552_crit_edge, label %if.else553

lor.lhs.false549.if.then552_crit_edge:            ; preds = %lor.lhs.false549
  br label %if.then552

if.then552:                                       ; preds = %lor.lhs.false549.if.then552_crit_edge, %sw.bb.if.then552_crit_edge
  store i32 9, i32* %type491, align 4
  br label %if.end569

if.else553:                                       ; preds = %lor.lhs.false549
  %tmp319 = load i32, i32* %flags492, align 4
  %cmp554 = icmp sge i32 %tmp319, 8
  br i1 %cmp554, label %if.then556, label %if.else557

if.then556:                                       ; preds = %if.else553
  store i32 7, i32* %type491, align 4
  br label %if.end568

if.else557:                                       ; preds = %if.else553
  %tmp320 = load i32, i32* %flags492, align 4
  %and558 = and i32 %tmp320, 2
  %tobool559 = icmp ne i32 %and558, 0
  br i1 %tobool559, label %if.then560, label %if.else561

if.then560:                                       ; preds = %if.else557
  store i32 1, i32* %type491, align 4
  br label %if.end567

if.else561:                                       ; preds = %if.else557
  %tmp321 = load i32, i32* %flags492, align 4
  %and562 = and i32 %tmp321, 1
  %tobool563 = icmp ne i32 %and562, 0
  br i1 %tobool563, label %if.then564, label %if.else565

if.then564:                                       ; preds = %if.else561
  store i32 3, i32* %type491, align 4
  br label %if.end566

if.else565:                                       ; preds = %if.else561
  store i32 5, i32* %type491, align 4
  br label %if.end566

if.end566:                                        ; preds = %if.else565, %if.then564
  br label %if.end567

if.end567:                                        ; preds = %if.end566, %if.then560
  br label %if.end568

if.end568:                                        ; preds = %if.end567, %if.then556
  br label %if.end569

if.end569:                                        ; preds = %if.end568, %if.then552
  br label %sw.epilog

sw.bb570:                                         ; preds = %for.end544.sw.bb570_crit_edge443, %for.end544.sw.bb570_crit_edge442, %for.end544.sw.bb570_crit_edge441, %for.end544.sw.bb570_crit_edge
  %tmp322 = load i32, i32* %flags492, align 4
  %cmp571 = icmp sge i32 %tmp322, 16
  br i1 %cmp571, label %sw.bb570.if.then576_crit_edge, label %lor.lhs.false573

sw.bb570.if.then576_crit_edge:                    ; preds = %sw.bb570
  br label %if.then576

lor.lhs.false573:                                 ; preds = %sw.bb570
  %tmp323 = load i32, i32* %flags492, align 4
  %and574 = and i32 %tmp323, 4
  %tobool575 = icmp ne i32 %and574, 0
  br i1 %tobool575, label %lor.lhs.false573.if.then576_crit_edge, label %if.else577

lor.lhs.false573.if.then576_crit_edge:            ; preds = %lor.lhs.false573
  br label %if.then576

if.then576:                                       ; preds = %lor.lhs.false573.if.then576_crit_edge, %sw.bb570.if.then576_crit_edge
  store i32 10, i32* %type491, align 4
  br label %if.end593

if.else577:                                       ; preds = %lor.lhs.false573
  %tmp324 = load i32, i32* %flags492, align 4
  %cmp578 = icmp sge i32 %tmp324, 8
  br i1 %cmp578, label %if.then580, label %if.else581

if.then580:                                       ; preds = %if.else577
  store i32 8, i32* %type491, align 4
  br label %if.end592

if.else581:                                       ; preds = %if.else577
  %tmp325 = load i32, i32* %flags492, align 4
  %and582 = and i32 %tmp325, 2
  %tobool583 = icmp ne i32 %and582, 0
  br i1 %tobool583, label %if.then584, label %if.else585

if.then584:                                       ; preds = %if.else581
  store i32 2, i32* %type491, align 4
  br label %if.end591

if.else585:                                       ; preds = %if.else581
  %tmp326 = load i32, i32* %flags492, align 4
  %and586 = and i32 %tmp326, 1
  %tobool587 = icmp ne i32 %and586, 0
  br i1 %tobool587, label %if.then588, label %if.else589

if.then588:                                       ; preds = %if.else585
  store i32 4, i32* %type491, align 4
  br label %if.end590

if.else589:                                       ; preds = %if.else585
  store i32 6, i32* %type491, align 4
  br label %if.end590

if.end590:                                        ; preds = %if.else589, %if.then588
  br label %if.end591

if.end591:                                        ; preds = %if.end590, %if.then584
  br label %if.end592

if.end592:                                        ; preds = %if.end591, %if.then580
  br label %if.end593

if.end593:                                        ; preds = %if.end592, %if.then576
  br label %sw.epilog

sw.bb594:                                         ; preds = %for.end544.sw.bb594_crit_edge450, %for.end544.sw.bb594_crit_edge449, %for.end544.sw.bb594_crit_edge448, %for.end544.sw.bb594_crit_edge447, %for.end544.sw.bb594_crit_edge446, %for.end544.sw.bb594_crit_edge445, %for.end544.sw.bb594_crit_edge444, %for.end544.sw.bb594_crit_edge
  %tmp327 = load i32, i32* %flags492, align 4
  %cmp595 = icmp sge i32 %tmp327, 16
  br i1 %cmp595, label %sw.bb594.if.then600_crit_edge, label %lor.lhs.false597

sw.bb594.if.then600_crit_edge:                    ; preds = %sw.bb594
  br label %if.then600

lor.lhs.false597:                                 ; preds = %sw.bb594
  %tmp328 = load i32, i32* %flags492, align 4
  %and598 = and i32 %tmp328, 4
  %tobool599 = icmp ne i32 %and598, 0
  br i1 %tobool599, label %lor.lhs.false597.if.then600_crit_edge, label %if.else601

lor.lhs.false597.if.then600_crit_edge:            ; preds = %lor.lhs.false597
  br label %if.then600

if.then600:                                       ; preds = %lor.lhs.false597.if.then600_crit_edge, %sw.bb594.if.then600_crit_edge
  store i32 12, i32* %type491, align 4
  br label %if.end602

if.else601:                                       ; preds = %lor.lhs.false597
  store i32 11, i32* %type491, align 4
  br label %if.end602

if.end602:                                        ; preds = %if.else601, %if.then600
  br label %sw.epilog

sw.bb603:                                         ; preds = %for.end544
  %tmp329 = load i32, i32* %flags492, align 4
  %cmp604 = icmp sge i32 %tmp329, 8
  br i1 %cmp604, label %if.then606, label %if.else607

if.then606:                                       ; preds = %sw.bb603
  store i32 14, i32* %type491, align 4
  br label %if.end608

if.else607:                                       ; preds = %sw.bb603
  store i32 13, i32* %type491, align 4
  br label %if.end608

if.end608:                                        ; preds = %if.else607, %if.then606
  br label %sw.epilog

sw.bb609:                                         ; preds = %for.end544
  store i32 14, i32* %type491, align 4
  store i8 99, i8* %c, align 1
  br label %sw.epilog

sw.bb610:                                         ; preds = %for.end544
  %tmp330 = load i32, i32* %flags492, align 4
  %cmp611 = icmp sge i32 %tmp330, 8
  br i1 %cmp611, label %if.then613, label %if.else614

if.then613:                                       ; preds = %sw.bb610
  store i32 16, i32* %type491, align 4
  br label %if.end615

if.else614:                                       ; preds = %sw.bb610
  store i32 15, i32* %type491, align 4
  br label %if.end615

if.end615:                                        ; preds = %if.else614, %if.then613
  br label %sw.epilog

sw.bb616:                                         ; preds = %for.end544
  store i32 16, i32* %type491, align 4
  store i8 115, i8* %c, align 1
  br label %sw.epilog

sw.bb617:                                         ; preds = %for.end544
  store i32 17, i32* %type491, align 4
  br label %sw.epilog

sw.bb618:                                         ; preds = %for.end544
  %tmp331 = load i32, i32* %flags492, align 4
  %cmp619 = icmp sge i32 %tmp331, 16
  br i1 %cmp619, label %sw.bb618.if.then624_crit_edge, label %lor.lhs.false621

sw.bb618.if.then624_crit_edge:                    ; preds = %sw.bb618
  br label %if.then624

lor.lhs.false621:                                 ; preds = %sw.bb618
  %tmp332 = load i32, i32* %flags492, align 4
  %and622 = and i32 %tmp332, 4
  %tobool623 = icmp ne i32 %and622, 0
  br i1 %tobool623, label %lor.lhs.false621.if.then624_crit_edge, label %if.else625

lor.lhs.false621.if.then624_crit_edge:            ; preds = %lor.lhs.false621
  br label %if.then624

if.then624:                                       ; preds = %lor.lhs.false621.if.then624_crit_edge, %sw.bb618.if.then624_crit_edge
  store i32 22, i32* %type491, align 4
  br label %if.end641

if.else625:                                       ; preds = %lor.lhs.false621
  %tmp333 = load i32, i32* %flags492, align 4
  %cmp626 = icmp sge i32 %tmp333, 8
  br i1 %cmp626, label %if.then628, label %if.else629

if.then628:                                       ; preds = %if.else625
  store i32 21, i32* %type491, align 4
  br label %if.end640

if.else629:                                       ; preds = %if.else625
  %tmp334 = load i32, i32* %flags492, align 4
  %and630 = and i32 %tmp334, 2
  %tobool631 = icmp ne i32 %and630, 0
  br i1 %tobool631, label %if.then632, label %if.else633

if.then632:                                       ; preds = %if.else629
  store i32 18, i32* %type491, align 4
  br label %if.end639

if.else633:                                       ; preds = %if.else629
  %tmp335 = load i32, i32* %flags492, align 4
  %and634 = and i32 %tmp335, 1
  %tobool635 = icmp ne i32 %and634, 0
  br i1 %tobool635, label %if.then636, label %if.else637

if.then636:                                       ; preds = %if.else633
  store i32 19, i32* %type491, align 4
  br label %if.end638

if.else637:                                       ; preds = %if.else633
  store i32 20, i32* %type491, align 4
  br label %if.end638

if.end638:                                        ; preds = %if.else637, %if.then636
  br label %if.end639

if.end639:                                        ; preds = %if.end638, %if.then632
  br label %if.end640

if.end640:                                        ; preds = %if.end639, %if.then628
  br label %if.end641

if.end641:                                        ; preds = %if.end640, %if.then624
  br label %sw.epilog

sw.bb642:                                         ; preds = %for.end544
  store i32 0, i32* %type491, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %for.end544
  br label %error

sw.epilog:                                        ; preds = %sw.bb642, %if.end641, %sw.bb617, %sw.bb616, %if.end615, %sw.bb609, %if.end608, %if.end602, %if.end593, %if.end569
  %tmp336 = load i32, i32* %type491, align 4
  %cmp643 = icmp ne i32 %tmp336, 0
  br i1 %cmp643, label %if.then645, label %sw.epilog.if.end733_crit_edge

sw.epilog.if.end733_crit_edge:                    ; preds = %sw.epilog
  br label %if.end733

if.then645:                                       ; preds = %sw.epilog
  %tmp337 = load i64, i64* %arg_index, align 8
  %tmp338 = load %struct.char_directive*, %struct.char_directive** %dp, align 8
  %arg_index646 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %tmp338, i32 0, i32 10
  store i64 %tmp337, i64* %arg_index646, align 8
  %tmp339 = load %struct.char_directive*, %struct.char_directive** %dp, align 8
  %arg_index647 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %tmp339, i32 0, i32 10
  %tmp340 = load i64, i64* %arg_index647, align 8
  %cmp648 = icmp eq i64 %tmp340, -1
  br i1 %cmp648, label %if.then650, label %if.then645.if.end658_crit_edge

if.then645.if.end658_crit_edge:                   ; preds = %if.then645
  br label %if.end658

if.then650:                                       ; preds = %if.then645
  %tmp341 = load i64, i64* %arg_posn, align 8
  %inc651 = add i64 %tmp341, 1
  store i64 %inc651, i64* %arg_posn, align 8
  %tmp342 = load %struct.char_directive*, %struct.char_directive** %dp, align 8
  %arg_index652 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %tmp342, i32 0, i32 10
  store i64 %tmp341, i64* %arg_index652, align 8
  %tmp343 = load %struct.char_directive*, %struct.char_directive** %dp, align 8
  %arg_index653 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %tmp343, i32 0, i32 10
  %tmp344 = load i64, i64* %arg_index653, align 8
  %cmp654 = icmp eq i64 %tmp344, -1
  br i1 %cmp654, label %if.then656, label %if.end657

if.then656:                                       ; preds = %if.then650
  br label %error

if.end657:                                        ; preds = %if.then650
  br label %if.end658

if.end658:                                        ; preds = %if.then645.if.end658_crit_edge, %if.end657
  %tmp345 = load %struct.char_directive*, %struct.char_directive** %dp, align 8
  %arg_index660 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %tmp345, i32 0, i32 10
  %tmp346 = load i64, i64* %arg_index660, align 8
  store i64 %tmp346, i64* %n659, align 8
  %tmp347 = load i64, i64* %n659, align 8
  %tmp348 = load i64, i64* %a_allocated, align 8
  %cmp661 = icmp uge i64 %tmp347, %tmp348
  br i1 %cmp661, label %if.then663, label %if.end658.if.end703_crit_edge

if.end658.if.end703_crit_edge:                    ; preds = %if.end658
  br label %if.end703

if.then663:                                       ; preds = %if.end658
  %tmp349 = load i64, i64* %a_allocated, align 8
  %cmp666 = icmp ule i64 %tmp349, 9223372036854775807
  br i1 %cmp666, label %cond.true668, label %cond.false670

cond.true668:                                     ; preds = %if.then663
  %tmp350 = load i64, i64* %a_allocated, align 8
  %mul669 = mul i64 %tmp350, 2
  store i64 %mul669, i64* %mul669.reg2mem
  %mul669.reload = load i64, i64* %mul669.reg2mem
  store i64 %mul669.reload, i64* %cond672.reg2mem
  br label %cond.end671

cond.false670:                                    ; preds = %if.then663
  store i64 -1, i64* %cond672.reg2mem
  br label %cond.end671

cond.end671:                                      ; preds = %cond.false670, %cond.true668
  %cond672.reload = load i64, i64* %cond672.reg2mem
  store i64 %cond672.reload, i64* %a_allocated, align 8
  %tmp351 = load i64, i64* %a_allocated, align 8
  %tmp352 = load i64, i64* %n659, align 8
  %cmp673 = icmp ule i64 %tmp351, %tmp352
  br i1 %cmp673, label %if.then675, label %cond.end671.if.end677_crit_edge

cond.end671.if.end677_crit_edge:                  ; preds = %cond.end671
  br label %if.end677

if.then675:                                       ; preds = %cond.end671
  %tmp353 = load i64, i64* %n659, align 8
  %call676 = call i64 @xsum152(i64 %tmp353, i64 1) #13
  store i64 %call676, i64* %a_allocated, align 8
  br label %if.end677

if.end677:                                        ; preds = %cond.end671.if.end677_crit_edge, %if.then675
  %tmp354 = load i64, i64* %a_allocated, align 8
  %cmp678 = icmp ule i64 %tmp354, 576460752303423487
  br i1 %cmp678, label %cond.true680, label %cond.false682

cond.true680:                                     ; preds = %if.end677
  %tmp355 = load i64, i64* %a_allocated, align 8
  %mul681 = mul i64 %tmp355, 32
  store i64 %mul681, i64* %mul681.reg2mem
  %mul681.reload = load i64, i64* %mul681.reg2mem
  store i64 %mul681.reload, i64* %cond684.reg2mem
  br label %cond.end683

cond.false682:                                    ; preds = %if.end677
  store i64 -1, i64* %cond684.reg2mem
  br label %cond.end683

cond.end683:                                      ; preds = %cond.false682, %cond.true680
  %cond684.reload = load i64, i64* %cond684.reg2mem
  store i64 %cond684.reload, i64* %memory_size664, align 8
  %tmp356 = load i64, i64* %memory_size664, align 8
  %cmp685 = icmp eq i64 %tmp356, -1
  br i1 %cmp685, label %if.then687, label %if.end688

if.then687:                                       ; preds = %cond.end683
  br label %out_of_memory

if.end688:                                        ; preds = %cond.end683
  %tmp357 = load %struct.arguments*, %struct.arguments** %a.addr, align 8
  %arg689 = getelementptr inbounds %struct.arguments, %struct.arguments* %tmp357, i32 0, i32 1
  %tmp358 = load %struct.argument*, %struct.argument** %arg689, align 8
  %tobool690 = icmp ne %struct.argument* %tmp358, null
  br i1 %tobool690, label %cond.true691, label %cond.false694

cond.true691:                                     ; preds = %if.end688
  %tmp359 = load %struct.arguments*, %struct.arguments** %a.addr, align 8
  %arg692 = getelementptr inbounds %struct.arguments, %struct.arguments* %tmp359, i32 0, i32 1
  %tmp360 = load %struct.argument*, %struct.argument** %arg692, align 8
  %tmp361 = bitcast %struct.argument* %tmp360 to i8*
  %tmp362 = load i64, i64* %memory_size664, align 8
  %call693 = call i8* @realloc(i8* %tmp361, i64 %tmp362) #8
  store i8* %call693, i8** %call693.reg2mem
  %call693.reload = load i8*, i8** %call693.reg2mem
  store i8* %call693.reload, i8** %cond697.reg2mem
  br label %cond.end696

cond.false694:                                    ; preds = %if.end688
  %tmp363 = load i64, i64* %memory_size664, align 8
  %call695 = call noalias i8* @malloc(i64 %tmp363) #8
  store i8* %call695, i8** %call695.reg2mem
  %call695.reload = load i8*, i8** %call695.reg2mem
  store i8* %call695.reload, i8** %cond697.reg2mem
  br label %cond.end696

cond.end696:                                      ; preds = %cond.false694, %cond.true691
  %cond697.reload = load i8*, i8** %cond697.reg2mem
  %tmp364 = bitcast i8* %cond697.reload to %struct.argument*
  store %struct.argument* %tmp364, %struct.argument** %memory665, align 8
  %tmp365 = load %struct.argument*, %struct.argument** %memory665, align 8
  %cmp698 = icmp eq %struct.argument* %tmp365, null
  br i1 %cmp698, label %if.then700, label %if.end701

if.then700:                                       ; preds = %cond.end696
  br label %out_of_memory

if.end701:                                        ; preds = %cond.end696
  %tmp366 = load %struct.argument*, %struct.argument** %memory665, align 8
  %tmp367 = load %struct.arguments*, %struct.arguments** %a.addr, align 8
  %arg702 = getelementptr inbounds %struct.arguments, %struct.arguments* %tmp367, i32 0, i32 1
  store %struct.argument* %tmp366, %struct.argument** %arg702, align 8
  br label %if.end703

if.end703:                                        ; preds = %if.end658.if.end703_crit_edge, %if.end701
  br label %while.cond704

while.cond704:                                    ; preds = %while.body708, %if.end703
  %tmp368 = load %struct.arguments*, %struct.arguments** %a.addr, align 8
  %count705 = getelementptr inbounds %struct.arguments, %struct.arguments* %tmp368, i32 0, i32 0
  %tmp369 = load i64, i64* %count705, align 8
  %tmp370 = load i64, i64* %n659, align 8
  %cmp706 = icmp ule i64 %tmp369, %tmp370
  br i1 %cmp706, label %while.body708, label %while.end714

while.body708:                                    ; preds = %while.cond704
  %tmp371 = load %struct.arguments*, %struct.arguments** %a.addr, align 8
  %count709 = getelementptr inbounds %struct.arguments, %struct.arguments* %tmp371, i32 0, i32 0
  %tmp372 = load i64, i64* %count709, align 8
  %inc710 = add i64 %tmp372, 1
  store i64 %inc710, i64* %count709, align 8
  %tmp373 = load %struct.arguments*, %struct.arguments** %a.addr, align 8
  %arg711 = getelementptr inbounds %struct.arguments, %struct.arguments* %tmp373, i32 0, i32 1
  %tmp374 = load %struct.argument*, %struct.argument** %arg711, align 8
  %arrayidx712 = getelementptr inbounds %struct.argument, %struct.argument* %tmp374, i64 %tmp372
  %type713 = getelementptr inbounds %struct.argument, %struct.argument* %arrayidx712, i32 0, i32 0
  store i32 0, i32* %type713, align 4
  br label %while.cond704

while.end714:                                     ; preds = %while.cond704
  %tmp375 = load i64, i64* %n659, align 8
  %tmp376 = load %struct.arguments*, %struct.arguments** %a.addr, align 8
  %arg715 = getelementptr inbounds %struct.arguments, %struct.arguments* %tmp376, i32 0, i32 1
  %tmp377 = load %struct.argument*, %struct.argument** %arg715, align 8
  %arrayidx716 = getelementptr inbounds %struct.argument, %struct.argument* %tmp377, i64 %tmp375
  %type717 = getelementptr inbounds %struct.argument, %struct.argument* %arrayidx716, i32 0, i32 0
  %tmp378 = load i32, i32* %type717, align 4
  %cmp718 = icmp eq i32 %tmp378, 0
  br i1 %cmp718, label %if.then720, label %if.else724

if.then720:                                       ; preds = %while.end714
  %tmp379 = load i32, i32* %type491, align 4
  %tmp380 = load i64, i64* %n659, align 8
  %tmp381 = load %struct.arguments*, %struct.arguments** %a.addr, align 8
  %arg721 = getelementptr inbounds %struct.arguments, %struct.arguments* %tmp381, i32 0, i32 1
  %tmp382 = load %struct.argument*, %struct.argument** %arg721, align 8
  %arrayidx722 = getelementptr inbounds %struct.argument, %struct.argument* %tmp382, i64 %tmp380
  %type723 = getelementptr inbounds %struct.argument, %struct.argument* %arrayidx722, i32 0, i32 0
  store i32 %tmp379, i32* %type723, align 4
  br label %if.end732

if.else724:                                       ; preds = %while.end714
  %tmp383 = load i64, i64* %n659, align 8
  %tmp384 = load %struct.arguments*, %struct.arguments** %a.addr, align 8
  %arg725 = getelementptr inbounds %struct.arguments, %struct.arguments* %tmp384, i32 0, i32 1
  %tmp385 = load %struct.argument*, %struct.argument** %arg725, align 8
  %arrayidx726 = getelementptr inbounds %struct.argument, %struct.argument* %tmp385, i64 %tmp383
  %type727 = getelementptr inbounds %struct.argument, %struct.argument* %arrayidx726, i32 0, i32 0
  %tmp386 = load i32, i32* %type727, align 4
  %tmp387 = load i32, i32* %type491, align 4
  %cmp728 = icmp ne i32 %tmp386, %tmp387
  br i1 %cmp728, label %if.then730, label %if.end731

if.then730:                                       ; preds = %if.else724
  br label %error

if.end731:                                        ; preds = %if.else724
  br label %if.end732

if.end732:                                        ; preds = %if.end731, %if.then720
  br label %if.end733

if.end733:                                        ; preds = %sw.epilog.if.end733_crit_edge, %if.end732
  %tmp388 = load i8, i8* %c, align 1
  %tmp389 = load %struct.char_directive*, %struct.char_directive** %dp, align 8
  %conversion = getelementptr inbounds %struct.char_directive, %struct.char_directive* %tmp389, i32 0, i32 9
  store i8 %tmp388, i8* %conversion, align 1
  %tmp390 = load i8*, i8** %cp, align 8
  %tmp391 = load %struct.char_directive*, %struct.char_directive** %dp, align 8
  %dir_end = getelementptr inbounds %struct.char_directive, %struct.char_directive* %tmp391, i32 0, i32 1
  store i8* %tmp390, i8** %dir_end, align 8
  %tmp392 = load %struct.char_directives*, %struct.char_directives** %d.addr, align 8
  %count734 = getelementptr inbounds %struct.char_directives, %struct.char_directives* %tmp392, i32 0, i32 0
  %tmp393 = load i64, i64* %count734, align 8
  %inc735 = add i64 %tmp393, 1
  store i64 %inc735, i64* %count734, align 8
  %tmp394 = load %struct.char_directives*, %struct.char_directives** %d.addr, align 8
  %count736 = getelementptr inbounds %struct.char_directives, %struct.char_directives* %tmp394, i32 0, i32 0
  %tmp395 = load i64, i64* %count736, align 8
  %tmp396 = load i64, i64* %d_allocated, align 8
  %cmp737 = icmp uge i64 %tmp395, %tmp396
  br i1 %cmp737, label %if.then739, label %if.end733.if.end767_crit_edge

if.end733.if.end767_crit_edge:                    ; preds = %if.end733
  br label %if.end767

if.then739:                                       ; preds = %if.end733
  %tmp397 = load i64, i64* %d_allocated, align 8
  %cmp742 = icmp ule i64 %tmp397, 9223372036854775807
  br i1 %cmp742, label %cond.true744, label %cond.false746

cond.true744:                                     ; preds = %if.then739
  %tmp398 = load i64, i64* %d_allocated, align 8
  %mul745 = mul i64 %tmp398, 2
  store i64 %mul745, i64* %mul745.reg2mem
  %mul745.reload = load i64, i64* %mul745.reg2mem
  store i64 %mul745.reload, i64* %cond748.reg2mem
  br label %cond.end747

cond.false746:                                    ; preds = %if.then739
  store i64 -1, i64* %cond748.reg2mem
  br label %cond.end747

cond.end747:                                      ; preds = %cond.false746, %cond.true744
  %cond748.reload = load i64, i64* %cond748.reg2mem
  store i64 %cond748.reload, i64* %d_allocated, align 8
  %tmp399 = load i64, i64* %d_allocated, align 8
  %cmp749 = icmp ule i64 %tmp399, 209622091746699450
  br i1 %cmp749, label %cond.true751, label %cond.false753

cond.true751:                                     ; preds = %cond.end747
  %tmp400 = load i64, i64* %d_allocated, align 8
  %mul752 = mul i64 %tmp400, 88
  store i64 %mul752, i64* %mul752.reg2mem
  %mul752.reload = load i64, i64* %mul752.reg2mem
  store i64 %mul752.reload, i64* %cond755.reg2mem
  br label %cond.end754

cond.false753:                                    ; preds = %cond.end747
  store i64 -1, i64* %cond755.reg2mem
  br label %cond.end754

cond.end754:                                      ; preds = %cond.false753, %cond.true751
  %cond755.reload = load i64, i64* %cond755.reg2mem
  store i64 %cond755.reload, i64* %memory_size740, align 8
  %tmp401 = load i64, i64* %memory_size740, align 8
  %cmp756 = icmp eq i64 %tmp401, -1
  br i1 %cmp756, label %if.then758, label %if.end759

if.then758:                                       ; preds = %cond.end754
  br label %out_of_memory

if.end759:                                        ; preds = %cond.end754
  %tmp402 = load %struct.char_directives*, %struct.char_directives** %d.addr, align 8
  %dir760 = getelementptr inbounds %struct.char_directives, %struct.char_directives* %tmp402, i32 0, i32 1
  %tmp403 = load %struct.char_directive*, %struct.char_directive** %dir760, align 8
  %tmp404 = bitcast %struct.char_directive* %tmp403 to i8*
  %tmp405 = load i64, i64* %memory_size740, align 8
  %call761 = call i8* @realloc(i8* %tmp404, i64 %tmp405) #8
  %tmp406 = bitcast i8* %call761 to %struct.char_directive*
  store %struct.char_directive* %tmp406, %struct.char_directive** %memory741, align 8
  %tmp407 = load %struct.char_directive*, %struct.char_directive** %memory741, align 8
  %cmp762 = icmp eq %struct.char_directive* %tmp407, null
  br i1 %cmp762, label %if.then764, label %if.end765

if.then764:                                       ; preds = %if.end759
  br label %out_of_memory

if.end765:                                        ; preds = %if.end759
  %tmp408 = load %struct.char_directive*, %struct.char_directive** %memory741, align 8
  %tmp409 = load %struct.char_directives*, %struct.char_directives** %d.addr, align 8
  %dir766 = getelementptr inbounds %struct.char_directives, %struct.char_directives* %tmp409, i32 0, i32 1
  store %struct.char_directive* %tmp408, %struct.char_directive** %dir766, align 8
  br label %if.end767

if.end767:                                        ; preds = %if.end733.if.end767_crit_edge, %if.end765
  br label %if.end768

if.end768:                                        ; preds = %while.body.if.end768_crit_edge, %if.end767
  br label %while.cond

while.end769:                                     ; preds = %while.cond
  %tmp410 = load i8*, i8** %cp, align 8
  %tmp411 = load %struct.char_directives*, %struct.char_directives** %d.addr, align 8
  %count770 = getelementptr inbounds %struct.char_directives, %struct.char_directives* %tmp411, i32 0, i32 0
  %tmp412 = load i64, i64* %count770, align 8
  %tmp413 = load %struct.char_directives*, %struct.char_directives** %d.addr, align 8
  %dir771 = getelementptr inbounds %struct.char_directives, %struct.char_directives* %tmp413, i32 0, i32 1
  %tmp414 = load %struct.char_directive*, %struct.char_directive** %dir771, align 8
  %arrayidx772 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %tmp414, i64 %tmp412
  %dir_start773 = getelementptr inbounds %struct.char_directive, %struct.char_directive* %arrayidx772, i32 0, i32 0
  store i8* %tmp410, i8** %dir_start773, align 8
  %tmp415 = load i64, i64* %max_width_length, align 8
  %tmp416 = load %struct.char_directives*, %struct.char_directives** %d.addr, align 8
  %max_width_length774 = getelementptr inbounds %struct.char_directives, %struct.char_directives* %tmp416, i32 0, i32 2
  store i64 %tmp415, i64* %max_width_length774, align 8
  %tmp417 = load i64, i64* %max_precision_length, align 8
  %tmp418 = load %struct.char_directives*, %struct.char_directives** %d.addr, align 8
  %max_precision_length775 = getelementptr inbounds %struct.char_directives, %struct.char_directives* %tmp418, i32 0, i32 3
  store i64 %tmp417, i64* %max_precision_length775, align 8
  store i32 0, i32* %retval
  br label %return

error:                                            ; preds = %if.then730, %if.then656, %sw.default, %if.then461, %if.then387, %if.then371, %if.then367, %if.then265, %if.then196, %if.then181, %if.then177, %if.then55, %if.then51
  %tmp419 = load %struct.arguments*, %struct.arguments** %a.addr, align 8
  %arg776 = getelementptr inbounds %struct.arguments, %struct.arguments* %tmp419, i32 0, i32 1
  %tmp420 = load %struct.argument*, %struct.argument** %arg776, align 8
  %tobool777 = icmp ne %struct.argument* %tmp420, null
  br i1 %tobool777, label %if.then778, label %error.if.end780_crit_edge

error.if.end780_crit_edge:                        ; preds = %error
  br label %if.end780

if.then778:                                       ; preds = %error
  %tmp421 = load %struct.arguments*, %struct.arguments** %a.addr, align 8
  %arg779 = getelementptr inbounds %struct.arguments, %struct.arguments* %tmp421, i32 0, i32 1
  %tmp422 = load %struct.argument*, %struct.argument** %arg779, align 8
  %tmp423 = bitcast %struct.argument* %tmp422 to i8*
  call void @free(i8* %tmp423) #8
  br label %if.end780

if.end780:                                        ; preds = %error.if.end780_crit_edge, %if.then778
  %tmp424 = load %struct.char_directives*, %struct.char_directives** %d.addr, align 8
  %dir781 = getelementptr inbounds %struct.char_directives, %struct.char_directives* %tmp424, i32 0, i32 1
  %tmp425 = load %struct.char_directive*, %struct.char_directive** %dir781, align 8
  %tobool782 = icmp ne %struct.char_directive* %tmp425, null
  br i1 %tobool782, label %if.then783, label %if.end780.if.end785_crit_edge

if.end780.if.end785_crit_edge:                    ; preds = %if.end780
  br label %if.end785

if.then783:                                       ; preds = %if.end780
  %tmp426 = load %struct.char_directives*, %struct.char_directives** %d.addr, align 8
  %dir784 = getelementptr inbounds %struct.char_directives, %struct.char_directives* %tmp426, i32 0, i32 1
  %tmp427 = load %struct.char_directive*, %struct.char_directive** %dir784, align 8
  %tmp428 = bitcast %struct.char_directive* %tmp427 to i8*
  call void @free(i8* %tmp428) #8
  br label %if.end785

if.end785:                                        ; preds = %if.end780.if.end785_crit_edge, %if.then783
  %call786 = call i32* @__errno_location() #14
  store i32 22, i32* %call786, align 4
  store i32 -1, i32* %retval
  br label %return

out_of_memory:                                    ; preds = %if.then764, %if.then758, %if.then700, %if.then687, %if.then431, %if.then418, %if.then237, %if.then225
  %tmp429 = load %struct.arguments*, %struct.arguments** %a.addr, align 8
  %arg787 = getelementptr inbounds %struct.arguments, %struct.arguments* %tmp429, i32 0, i32 1
  %tmp430 = load %struct.argument*, %struct.argument** %arg787, align 8
  %tobool788 = icmp ne %struct.argument* %tmp430, null
  br i1 %tobool788, label %if.then789, label %out_of_memory.if.end791_crit_edge

out_of_memory.if.end791_crit_edge:                ; preds = %out_of_memory
  br label %if.end791

if.then789:                                       ; preds = %out_of_memory
  %tmp431 = load %struct.arguments*, %struct.arguments** %a.addr, align 8
  %arg790 = getelementptr inbounds %struct.arguments, %struct.arguments* %tmp431, i32 0, i32 1
  %tmp432 = load %struct.argument*, %struct.argument** %arg790, align 8
  %tmp433 = bitcast %struct.argument* %tmp432 to i8*
  call void @free(i8* %tmp433) #8
  br label %if.end791

if.end791:                                        ; preds = %out_of_memory.if.end791_crit_edge, %if.then789
  %tmp434 = load %struct.char_directives*, %struct.char_directives** %d.addr, align 8
  %dir792 = getelementptr inbounds %struct.char_directives, %struct.char_directives* %tmp434, i32 0, i32 1
  %tmp435 = load %struct.char_directive*, %struct.char_directive** %dir792, align 8
  %tobool793 = icmp ne %struct.char_directive* %tmp435, null
  br i1 %tobool793, label %if.then794, label %if.end791.if.end796_crit_edge

if.end791.if.end796_crit_edge:                    ; preds = %if.end791
  br label %if.end796

if.then794:                                       ; preds = %if.end791
  %tmp436 = load %struct.char_directives*, %struct.char_directives** %d.addr, align 8
  %dir795 = getelementptr inbounds %struct.char_directives, %struct.char_directives* %tmp436, i32 0, i32 1
  %tmp437 = load %struct.char_directive*, %struct.char_directive** %dir795, align 8
  %tmp438 = bitcast %struct.char_directive* %tmp437 to i8*
  call void @free(i8* %tmp438) #8
  br label %if.end796

if.end796:                                        ; preds = %if.end791.if.end796_crit_edge, %if.then794
  br label %out_of_memory_1

out_of_memory_1:                                  ; preds = %if.end796, %if.then
  %call797 = call i32* @__errno_location() #14
  store i32 12, i32* %call797, align 4
  store i32 -1, i32* %retval
  br label %return

return:                                           ; preds = %out_of_memory_1, %if.end785, %while.end769
  %tmp439 = load i32, i32* %retval
  ret i32 %tmp439
}

; Function Attrs: inlinehint nounwind readonly uwtable
define internal i64 @xsum152(i64 %size1, i64 %size2) #11 {
entry:
  %size1.addr = alloca i64, align 8
  %size2.addr = alloca i64, align 8
  %sum = alloca i64, align 8
  %tmp4.reg2mem = alloca i64
  %cond.reg2mem = alloca i64
  %"reg2mem alloca point" = bitcast i32 0 to i32
  store i64 %size1, i64* %size1.addr, align 8
  store i64 %size2, i64* %size2.addr, align 8
  %tmp = load i64, i64* %size1.addr, align 8
  %tmp1 = load i64, i64* %size2.addr, align 8
  %add = add i64 %tmp, %tmp1
  store i64 %add, i64* %sum, align 8
  %tmp2 = load i64, i64* %sum, align 8
  %tmp3 = load i64, i64* %size1.addr, align 8
  %cmp = icmp uge i64 %tmp2, %tmp3
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %tmp4 = load i64, i64* %sum, align 8
  store i64 %tmp4, i64* %tmp4.reg2mem
  %tmp4.reload = load i64, i64* %tmp4.reg2mem
  store i64 %tmp4.reload, i64* %cond.reg2mem
  br label %cond.end

cond.false:                                       ; preds = %entry
  store i64 -1, i64* %cond.reg2mem
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond.reload = load i64, i64* %cond.reg2mem
  ret i64 %cond.reload
}

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { inlinehint nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { argmemonly nounwind }
attributes #8 = { nounwind }
attributes #9 = { noreturn "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { noreturn nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { inlinehint nounwind readonly uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { noreturn nounwind }
attributes #13 = { nounwind readonly }
attributes #14 = { nounwind readnone }
attributes #15 = { noreturn }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2}

!0 = !{i32 2, !"Dwarf Version", i32 4}
!1 = !{i32 1, !"Debug Info Version", i32 1}
!2 = !{!"clang version 3.4.2 (tags/RELEASE_342/final 323614)"}
!3 = !{i32 -2146394659}
!4 = !{i32 -2146394533}
!5 = !{i32 -2146394181}

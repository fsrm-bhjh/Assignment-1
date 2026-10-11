; ModuleID = '/home/stove/Assignment-1/results/branch/debug.ll'
source_filename = "Assignment-1-IR/Test-Cases/branch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %x) #0 !dbg !10 {
entry:
  call void @llvm.dbg.value(metadata i32 %x, metadata !15, metadata !DIExpression()), !dbg !16
  %cmp = icmp sgt i32 %x, 10, !dbg !17
  br i1 %cmp, label %if.then, label %if.else, !dbg !19

if.then:                                          ; preds = %entry
  %add = add nsw i32 %x, 1, !dbg !20
  call void @llvm.dbg.value(metadata i32 %add, metadata !21, metadata !DIExpression()), !dbg !16
  br label %if.end, !dbg !22

if.else:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata i32 10, metadata !21, metadata !DIExpression()), !dbg !16
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %y.0 = phi i32 [ %add, %if.then ], [ 10, %if.else ], !dbg !23
  call void @llvm.dbg.value(metadata i32 %y.0, metadata !21, metadata !DIExpression()), !dbg !16
  %add1 = add nsw i32 %x, 1, !dbg !24
  %cmp2 = icmp sge i32 %y.0, %add1, !dbg !25
  call void @svf_assert(i1 noundef zeroext %cmp2), !dbg !26
  ret i32 0, !dbg !27
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @svf_assert(i1 noundef zeroext) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8}
!llvm.ident = !{!9}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "clang version 16.0.4 (https://github.com/bjjwwang/LLVM-compile 2259018fffaba36b5e50dce52fb5aa97b417ce4f)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "Assignment-1-IR/Test-Cases/branch.c", directory: "/home/stove/Assignment-1", checksumkind: CSK_MD5, checksum: "a590f03cd6b66b2793385cea91dee08c")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 8, !"PIC Level", i32 2}
!6 = !{i32 7, !"PIE Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 2}
!8 = !{i32 7, !"frame-pointer", i32 2}
!9 = !{!"clang version 16.0.4 (https://github.com/bjjwwang/LLVM-compile 2259018fffaba36b5e50dce52fb5aa97b417ce4f)"}
!10 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 4, type: !11, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !14)
!11 = !DISubroutineType(types: !12)
!12 = !{!13, !13}
!13 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!14 = !{}
!15 = !DILocalVariable(name: "x", arg: 1, scope: !10, file: !1, line: 4, type: !13)
!16 = !DILocation(line: 0, scope: !10)
!17 = !DILocation(line: 6, column: 7, scope: !18)
!18 = distinct !DILexicalBlock(scope: !10, file: !1, line: 6, column: 5)
!19 = !DILocation(line: 6, column: 5, scope: !10)
!20 = !DILocation(line: 7, column: 9, scope: !18)
!21 = !DILocalVariable(name: "y", scope: !10, file: !1, line: 5, type: !13)
!22 = !DILocation(line: 7, column: 3, scope: !18)
!23 = !DILocation(line: 0, scope: !18)
!24 = !DILocation(line: 10, column: 17, scope: !10)
!25 = !DILocation(line: 10, column: 14, scope: !10)
!26 = !DILocation(line: 10, column: 2, scope: !10)
!27 = !DILocation(line: 11, column: 1, scope: !10)

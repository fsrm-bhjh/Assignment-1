; ModuleID = '/home/stove/Assignment-1/results/control-flow/debug.ll'
source_filename = "Assignment-1-IR/Test-Cases/control-flow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @bar(i32 noundef %s) #0 !dbg !10 {
entry:
  call void @llvm.dbg.value(metadata i32 %s, metadata !15, metadata !DIExpression()), !dbg !16
  ret i32 %s, !dbg !17
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 !dbg !18 {
entry:
  %call = call i32 (...) @source(), !dbg !21
  call void @llvm.dbg.value(metadata i32 %call, metadata !22, metadata !DIExpression()), !dbg !23
  %cmp = icmp sgt i32 %call, 0, !dbg !24
  br i1 %cmp, label %if.then, label %if.else, !dbg !26

if.then:                                          ; preds = %entry
  %call1 = call i32 @bar(i32 noundef %call), !dbg !27
  call void @llvm.dbg.value(metadata i32 %call1, metadata !29, metadata !DIExpression()), !dbg !30
  %call2 = call i32 @sink(i32 noundef %call1), !dbg !31
  br label %if.end, !dbg !32

if.else:                                          ; preds = %entry
  %call3 = call i32 @bar(i32 noundef %call), !dbg !33
  call void @llvm.dbg.value(metadata i32 %call3, metadata !35, metadata !DIExpression()), !dbg !36
  %call4 = call i32 @sink(i32 noundef %call3), !dbg !37
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 0, !dbg !38
}

declare i32 @source(...) #2

declare i32 @sink(i32 noundef) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8}
!llvm.ident = !{!9}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "clang version 16.0.4 (https://github.com/bjjwwang/LLVM-compile 2259018fffaba36b5e50dce52fb5aa97b417ce4f)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "Assignment-1-IR/Test-Cases/control-flow.c", directory: "/home/stove/Assignment-1", checksumkind: CSK_MD5, checksum: "097075d84e6e9d8bfeb40f095f23f51b")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 8, !"PIC Level", i32 2}
!6 = !{i32 7, !"PIE Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 2}
!8 = !{i32 7, !"frame-pointer", i32 2}
!9 = !{!"clang version 16.0.4 (https://github.com/bjjwwang/LLVM-compile 2259018fffaba36b5e50dce52fb5aa97b417ce4f)"}
!10 = distinct !DISubprogram(name: "bar", scope: !1, file: !1, line: 3, type: !11, scopeLine: 3, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !14)
!11 = !DISubroutineType(types: !12)
!12 = !{!13, !13}
!13 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!14 = !{}
!15 = !DILocalVariable(name: "s", arg: 1, scope: !10, file: !1, line: 3, type: !13)
!16 = !DILocation(line: 0, scope: !10)
!17 = !DILocation(line: 4, column: 2, scope: !10)
!18 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 6, type: !19, scopeLine: 6, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !14)
!19 = !DISubroutineType(types: !20)
!20 = !{!13}
!21 = !DILocation(line: 7, column: 10, scope: !18)
!22 = !DILocalVariable(name: "a", scope: !18, file: !1, line: 7, type: !13)
!23 = !DILocation(line: 0, scope: !18)
!24 = !DILocation(line: 8, column: 8, scope: !25)
!25 = distinct !DILexicalBlock(scope: !18, file: !1, line: 8, column: 6)
!26 = !DILocation(line: 8, column: 6, scope: !18)
!27 = !DILocation(line: 9, column: 11, scope: !28)
!28 = distinct !DILexicalBlock(scope: !25, file: !1, line: 8, column: 12)
!29 = !DILocalVariable(name: "p", scope: !28, file: !1, line: 9, type: !13)
!30 = !DILocation(line: 0, scope: !28)
!31 = !DILocation(line: 10, column: 3, scope: !28)
!32 = !DILocation(line: 11, column: 2, scope: !28)
!33 = !DILocation(line: 13, column: 11, scope: !34)
!34 = distinct !DILexicalBlock(scope: !25, file: !1, line: 12, column: 6)
!35 = !DILocalVariable(name: "q", scope: !34, file: !1, line: 13, type: !13)
!36 = !DILocation(line: 0, scope: !34)
!37 = !DILocation(line: 14, column: 3, scope: !34)
!38 = !DILocation(line: 16, column: 1, scope: !18)

; ModuleID = '/home/stove/Assignment-1/results/demo/debug.ll'
source_filename = "Assignment-1-IR/Test-Cases/demo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@tgetstr.initstr = internal global [25 x i8] c"select* From City ..\00\00\00\00\00", align 16, !dbg !0

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @tgetstr() #0 !dbg !2 {
entry:
  ret ptr @tgetstr.initstr, !dbg !22
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 !dbg !23 {
entry:
  %arr = alloca [5 x i32], align 16
  %call = call ptr @tgetstr(), !dbg !27
  call void @llvm.dbg.value(metadata ptr %call, metadata !28, metadata !DIExpression()), !dbg !29
  call void @llvm.dbg.value(metadata ptr %call, metadata !30, metadata !DIExpression()), !dbg !29
  call void @llvm.dbg.value(metadata ptr %call, metadata !31, metadata !DIExpression()), !dbg !29
  call void @broadcast(ptr noundef %call), !dbg !32
  call void @llvm.dbg.value(metadata i32 1, metadata !33, metadata !DIExpression()), !dbg !29
  call void @llvm.dbg.value(metadata ptr undef, metadata !34, metadata !DIExpression()), !dbg !29
  call void @llvm.dbg.value(metadata i32 3, metadata !33, metadata !DIExpression()), !dbg !29
  %cmp = icmp eq i32 3, 3, !dbg !36
  call void @svf_assert(i1 noundef zeroext %cmp), !dbg !37
  call void @llvm.dbg.declare(metadata ptr %arr, metadata !38, metadata !DIExpression()), !dbg !42
  call void @llvm.dbg.value(metadata i32 0, metadata !43, metadata !DIExpression()), !dbg !29
  br label %while.cond, !dbg !44

while.cond:                                       ; preds = %while.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %while.body ], !dbg !29
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !43, metadata !DIExpression()), !dbg !29
  %cmp1 = icmp slt i32 %i.0, 5, !dbg !45
  br i1 %cmp1, label %while.body, label %while.end, !dbg !44

while.body:                                       ; preds = %while.cond
  %inc = add nsw i32 %i.0, 1, !dbg !46
  call void @llvm.dbg.value(metadata i32 %inc, metadata !43, metadata !DIExpression()), !dbg !29
  %idxprom = sext i32 %inc to i64, !dbg !48
  %arrayidx = getelementptr inbounds [5 x i32], ptr %arr, i64 0, i64 %idxprom, !dbg !48
  store i32 10, ptr %arrayidx, align 4, !dbg !49
  br label %while.cond, !dbg !44, !llvm.loop !50

while.end:                                        ; preds = %while.cond
  ret i32 0, !dbg !53
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @broadcast(ptr noundef) #2

declare void @svf_assert(i1 noundef zeroext) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!8}
!llvm.module.flags = !{!14, !15, !16, !17, !18, !19, !20}
!llvm.ident = !{!21}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "initstr", scope: !2, file: !3, line: 9, type: !11, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "tgetstr", scope: !3, file: !3, line: 7, type: !4, scopeLine: 7, spFlags: DISPFlagDefinition, unit: !8, retainedNodes: !10)
!3 = !DIFile(filename: "Assignment-1-IR/Test-Cases/demo.c", directory: "/home/stove/Assignment-1", checksumkind: CSK_MD5, checksum: "cdd10c41d4dbbe45ab3a2151f745700c")
!4 = !DISubroutineType(types: !5)
!5 = !{!6}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!8 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "clang version 16.0.4 (https://github.com/bjjwwang/LLVM-compile 2259018fffaba36b5e50dce52fb5aa97b417ce4f)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !9, splitDebugInlining: false, nameTableKind: None)
!9 = !{!0}
!10 = !{}
!11 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 200, elements: !12)
!12 = !{!13}
!13 = !DISubrange(count: 25)
!14 = !{i32 7, !"Dwarf Version", i32 5}
!15 = !{i32 2, !"Debug Info Version", i32 3}
!16 = !{i32 1, !"wchar_size", i32 4}
!17 = !{i32 8, !"PIC Level", i32 2}
!18 = !{i32 7, !"PIE Level", i32 2}
!19 = !{i32 7, !"uwtable", i32 2}
!20 = !{i32 7, !"frame-pointer", i32 2}
!21 = !{!"clang version 16.0.4 (https://github.com/bjjwwang/LLVM-compile 2259018fffaba36b5e50dce52fb5aa97b417ce4f)"}
!22 = !DILocation(line: 10, column: 5, scope: !2)
!23 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 16, type: !24, scopeLine: 16, spFlags: DISPFlagDefinition, unit: !8, retainedNodes: !10)
!24 = !DISubroutineType(types: !25)
!25 = !{!26}
!26 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!27 = !DILocation(line: 19, column: 23, scope: !23)
!28 = !DILocalVariable(name: "injection", scope: !23, file: !3, line: 19, type: !6)
!29 = !DILocation(line: 0, scope: !23)
!30 = !DILocalVariable(name: "s", scope: !23, file: !3, line: 20, type: !6)
!31 = !DILocalVariable(name: "b", scope: !23, file: !3, line: 21, type: !6)
!32 = !DILocation(line: 22, column: 5, scope: !23)
!33 = !DILocalVariable(name: "a", scope: !23, file: !3, line: 26, type: !26)
!34 = !DILocalVariable(name: "p", scope: !23, file: !3, line: 25, type: !35)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!36 = !DILocation(line: 29, column: 18, scope: !23)
!37 = !DILocation(line: 29, column: 5, scope: !23)
!38 = !DILocalVariable(name: "arr", scope: !23, file: !3, line: 32, type: !39)
!39 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 160, elements: !40)
!40 = !{!41}
!41 = !DISubrange(count: 5)
!42 = !DILocation(line: 32, column: 9, scope: !23)
!43 = !DILocalVariable(name: "i", scope: !23, file: !3, line: 33, type: !26)
!44 = !DILocation(line: 34, column: 5, scope: !23)
!45 = !DILocation(line: 34, column: 13, scope: !23)
!46 = !DILocation(line: 35, column: 10, scope: !47)
!47 = distinct !DILexicalBlock(scope: !23, file: !3, line: 34, column: 18)
!48 = !DILocation(line: 35, column: 6, scope: !47)
!49 = !DILocation(line: 35, column: 14, scope: !47)
!50 = distinct !{!50, !44, !51, !52}
!51 = !DILocation(line: 36, column: 5, scope: !23)
!52 = !{!"llvm.loop.mustprogress"}
!53 = !DILocation(line: 38, column: 5, scope: !23)

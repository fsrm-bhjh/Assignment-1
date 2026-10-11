; ModuleID = '/home/stove/Assignment-1/results/swap/debug.ll'
source_filename = "Assignment-1-IR/Test-Cases/swap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local void @swap(ptr noundef %p, ptr noundef %q) #0 !dbg !10 {
entry:
  call void @llvm.dbg.value(metadata ptr %p, metadata !17, metadata !DIExpression()), !dbg !18
  call void @llvm.dbg.value(metadata ptr %q, metadata !19, metadata !DIExpression()), !dbg !18
  %0 = load ptr, ptr %p, align 8, !dbg !20
  call void @llvm.dbg.value(metadata ptr %0, metadata !21, metadata !DIExpression()), !dbg !18
  %1 = load ptr, ptr %q, align 8, !dbg !22
  store ptr %1, ptr %p, align 8, !dbg !23
  store ptr %0, ptr %q, align 8, !dbg !24
  ret void, !dbg !25
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 !dbg !26 {
entry:
  %a1 = alloca i8, align 1
  %b1 = alloca i8, align 1
  %a = alloca ptr, align 8
  %b = alloca ptr, align 8
  call void @llvm.dbg.declare(metadata ptr %a1, metadata !30, metadata !DIExpression()), !dbg !31
  call void @llvm.dbg.declare(metadata ptr %b1, metadata !32, metadata !DIExpression()), !dbg !33
  call void @llvm.dbg.declare(metadata ptr %a, metadata !34, metadata !DIExpression()), !dbg !35
  call void @llvm.dbg.declare(metadata ptr %b, metadata !36, metadata !DIExpression()), !dbg !37
  store ptr %a1, ptr %a, align 8, !dbg !38
  store ptr %b1, ptr %b, align 8, !dbg !39
  call void @swap(ptr noundef %a, ptr noundef %b), !dbg !40
  ret i32 0, !dbg !41
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8}
!llvm.ident = !{!9}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "clang version 16.0.4 (https://github.com/bjjwwang/LLVM-compile 2259018fffaba36b5e50dce52fb5aa97b417ce4f)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "Assignment-1-IR/Test-Cases/swap.c", directory: "/home/stove/Assignment-1", checksumkind: CSK_MD5, checksum: "dd4ef2e7928c73f25d222cf22a19e94f")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 8, !"PIC Level", i32 2}
!6 = !{i32 7, !"PIE Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 2}
!8 = !{i32 7, !"frame-pointer", i32 2}
!9 = !{!"clang version 16.0.4 (https://github.com/bjjwwang/LLVM-compile 2259018fffaba36b5e50dce52fb5aa97b417ce4f)"}
!10 = distinct !DISubprogram(name: "swap", scope: !1, file: !1, line: 1, type: !11, scopeLine: 1, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !16)
!11 = !DISubroutineType(types: !12)
!12 = !{null, !13, !13}
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!16 = !{}
!17 = !DILocalVariable(name: "p", arg: 1, scope: !10, file: !1, line: 1, type: !13)
!18 = !DILocation(line: 0, scope: !10)
!19 = !DILocalVariable(name: "q", arg: 2, scope: !10, file: !1, line: 1, type: !13)
!20 = !DILocation(line: 2, column: 13, scope: !10)
!21 = !DILocalVariable(name: "t", scope: !10, file: !1, line: 2, type: !14)
!22 = !DILocation(line: 3, column: 13, scope: !10)
!23 = !DILocation(line: 3, column: 11, scope: !10)
!24 = !DILocation(line: 4, column: 11, scope: !10)
!25 = !DILocation(line: 5, column: 1, scope: !10)
!26 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 6, type: !27, scopeLine: 6, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !16)
!27 = !DISubroutineType(types: !28)
!28 = !{!29}
!29 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!30 = !DILocalVariable(name: "a1", scope: !26, file: !1, line: 7, type: !15)
!31 = !DILocation(line: 7, column: 12, scope: !26)
!32 = !DILocalVariable(name: "b1", scope: !26, file: !1, line: 8, type: !15)
!33 = !DILocation(line: 8, column: 12, scope: !26)
!34 = !DILocalVariable(name: "a", scope: !26, file: !1, line: 9, type: !14)
!35 = !DILocation(line: 9, column: 13, scope: !26)
!36 = !DILocalVariable(name: "b", scope: !26, file: !1, line: 10, type: !14)
!37 = !DILocation(line: 10, column: 13, scope: !26)
!38 = !DILocation(line: 11, column: 9, scope: !26)
!39 = !DILocation(line: 12, column: 9, scope: !26)
!40 = !DILocation(line: 13, column: 7, scope: !26)
!41 = !DILocation(line: 14, column: 1, scope: !26)

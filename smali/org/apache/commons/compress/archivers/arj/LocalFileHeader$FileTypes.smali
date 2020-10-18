.class Lorg/apache/commons/compress/archivers/arj/LocalFileHeader$FileTypes;
.super Ljava/lang/Object;
.source "LocalFileHeader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FileTypes"
.end annotation


# static fields
.field static final BINARY:I = 0x0

.field static final CHAPTER_LABEL:I = 0x5

.field static final DIRECTORY:I = 0x3

.field static final SEVEN_BIT_TEXT:I = 0x1

.field static final VOLUME_LABEL:I = 0x4


# direct methods
.method constructor <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

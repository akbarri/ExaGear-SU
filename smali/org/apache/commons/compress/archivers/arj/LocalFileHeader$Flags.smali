.class Lorg/apache/commons/compress/archivers/arj/LocalFileHeader$Flags;
.super Ljava/lang/Object;
.source "LocalFileHeader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Flags"
.end annotation


# static fields
.field static final BACKUP:I = 0x20

.field static final EXTFILE:I = 0x8

.field static final GARBLED:I = 0x1

.field static final PATHSYM:I = 0x10

.field static final VOLUME:I = 0x4


# direct methods
.method constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.class Lorg/apache/commons/compress/archivers/arj/MainHeader$Flags;
.super Ljava/lang/Object;
.source "MainHeader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/compress/archivers/arj/MainHeader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Flags"
.end annotation


# static fields
.field static final ALTNAME:I = 0x80

.field static final ARJPROT:I = 0x8

.field static final BACKUP:I = 0x20

.field static final GARBLED:I = 0x1

.field static final OLD_SECURED_NEW_ANSI_PAGE:I = 0x2

.field static final PATHSYM:I = 0x10

.field static final SECURED:I = 0x40

.field static final VOLUME:I = 0x4


# direct methods
.method constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

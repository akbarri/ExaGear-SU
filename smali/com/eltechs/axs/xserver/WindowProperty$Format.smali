.class public Lcom/eltechs/axs/xserver/WindowProperty$Format;
.super Ljava/lang/Object;
.source "WindowProperty.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eltechs/axs/xserver/WindowProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Format"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final formatValue:B


# direct methods
.method public constructor <init>(B)V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-byte p1, p0, Lcom/eltechs/axs/xserver/WindowProperty$Format;->formatValue:B

    return-void
.end method


# virtual methods
.method public getFormatValue()B
    .locals 1

    .line 50
    iget-byte v0, p0, Lcom/eltechs/axs/xserver/WindowProperty$Format;->formatValue:B

    return v0
.end method

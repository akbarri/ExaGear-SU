.class public Lcom/eltechs/axs/xserver/impl/ColormapImpl;
.super Ljava/lang/Object;
.source "ColormapImpl.java"

# interfaces
.implements Lcom/eltechs/axs/xserver/Colormap;


# instance fields
.field private final id:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput p1, p0, Lcom/eltechs/axs/xserver/impl/ColormapImpl;->id:I

    return-void
.end method


# virtual methods
.method public getId()I
    .locals 1

    .line 27
    iget v0, p0, Lcom/eltechs/axs/xserver/impl/ColormapImpl;->id:I

    return v0
.end method

.class public Lcom/eltechs/axs/xserver/impl/PixmapImpl;
.super Ljava/lang/Object;
.source "PixmapImpl.java"

# interfaces
.implements Lcom/eltechs/axs/xserver/Pixmap;


# instance fields
.field private final backingStore:Lcom/eltechs/axs/xserver/Drawable;


# direct methods
.method public constructor <init>(Lcom/eltechs/axs/xserver/Drawable;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/eltechs/axs/xserver/impl/PixmapImpl;->backingStore:Lcom/eltechs/axs/xserver/Drawable;

    return-void
.end method


# virtual methods
.method public getBackingStore()Lcom/eltechs/axs/xserver/Drawable;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/eltechs/axs/xserver/impl/PixmapImpl;->backingStore:Lcom/eltechs/axs/xserver/Drawable;

    return-object v0
.end method

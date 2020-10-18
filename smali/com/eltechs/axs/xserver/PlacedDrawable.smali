.class public Lcom/eltechs/axs/xserver/PlacedDrawable;
.super Ljava/lang/Object;
.source "PlacedDrawable.java"


# instance fields
.field private final drawable:Lcom/eltechs/axs/xserver/Drawable;

.field private final location:Lcom/eltechs/axs/geom/Rectangle;


# direct methods
.method public constructor <init>(Lcom/eltechs/axs/xserver/Drawable;Lcom/eltechs/axs/geom/Rectangle;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/eltechs/axs/xserver/PlacedDrawable;->drawable:Lcom/eltechs/axs/xserver/Drawable;

    .line 18
    iput-object p2, p0, Lcom/eltechs/axs/xserver/PlacedDrawable;->location:Lcom/eltechs/axs/geom/Rectangle;

    return-void
.end method


# virtual methods
.method public getDrawable()Lcom/eltechs/axs/xserver/Drawable;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/eltechs/axs/xserver/PlacedDrawable;->drawable:Lcom/eltechs/axs/xserver/Drawable;

    return-object v0
.end method

.method public getLocation()Lcom/eltechs/axs/geom/Rectangle;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/eltechs/axs/xserver/PlacedDrawable;->location:Lcom/eltechs/axs/geom/Rectangle;

    return-object v0
.end method

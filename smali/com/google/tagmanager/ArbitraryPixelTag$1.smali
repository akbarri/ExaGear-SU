.class Lcom/google/tagmanager/ArbitraryPixelTag$1;
.super Ljava/lang/Object;
.source "ArbitraryPixelTag.java"

# interfaces
.implements Lcom/google/tagmanager/ArbitraryPixelTag$HitSenderProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/tagmanager/ArbitraryPixelTag;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/google/tagmanager/ArbitraryPixelTag$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/google/tagmanager/HitSender;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/google/tagmanager/ArbitraryPixelTag$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/tagmanager/DelayedHitSender;->getInstance(Landroid/content/Context;)Lcom/google/tagmanager/HitSender;

    move-result-object v0

    return-object v0
.end method

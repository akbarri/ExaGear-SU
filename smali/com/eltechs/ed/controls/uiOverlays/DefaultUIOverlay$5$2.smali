.class Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay$5$2;
.super Ljava/lang/Object;
.source "DefaultUIOverlay.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay$5;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay$5;


# direct methods
.method constructor <init>(Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay$5;)V
    .locals 0

    .line 189
    iput-object p1, p0, Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay$5$2;->this$1:Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 192
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.class public Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay$ScrollArea;
.super Ljava/lang/Object;
.source "DefaultUIOverlay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ScrollArea"
.end annotation


# instance fields
.field mLinearLayout:Landroid/widget/LinearLayout;

.field mScrollView:Landroid/widget/ScrollView;

.field final synthetic this$0:Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay;


# direct methods
.method constructor <init>(Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay;Landroid/widget/ScrollView;Landroid/widget/LinearLayout;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay$ScrollArea;->this$0:Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p2, p0, Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay$ScrollArea;->mScrollView:Landroid/widget/ScrollView;

    .line 61
    iput-object p3, p0, Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay$ScrollArea;->mLinearLayout:Landroid/widget/LinearLayout;

    return-void
.end method

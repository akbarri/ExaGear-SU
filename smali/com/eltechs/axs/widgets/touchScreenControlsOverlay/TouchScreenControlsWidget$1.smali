.class Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsWidget$1;
.super Ljava/lang/Object;
.source "TouchScreenControlsWidget.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsWidget;->onLayout(ZIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsWidget;

.field final synthetic val$bottom:I

.field final synthetic val$left:I

.field final synthetic val$right:I

.field final synthetic val$top:I


# direct methods
.method constructor <init>(Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsWidget;IIII)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsWidget$1;->this$0:Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsWidget;

    iput p2, p0, Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsWidget$1;->val$left:I

    iput p3, p0, Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsWidget$1;->val$top:I

    iput p4, p0, Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsWidget$1;->val$right:I

    iput p5, p0, Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsWidget$1;->val$bottom:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 63
    iget-object v0, p0, Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsWidget$1;->this$0:Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsWidget;

    invoke-static {v0}, Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsWidget;->access$000(Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsWidget;)Lcom/eltechs/axs/activities/XServerDisplayActivity;

    move-result-object v0

    iget v1, p0, Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsWidget$1;->val$left:I

    iget v2, p0, Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsWidget$1;->val$top:I

    iget v3, p0, Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsWidget$1;->val$right:I

    iget v4, p0, Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsWidget$1;->val$left:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsWidget$1;->val$bottom:I

    iget v5, p0, Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsWidget$1;->val$top:I

    sub-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/eltechs/axs/activities/XServerDisplayActivity;->placeViewOfXServer(IIII)V

    return-void
.end method

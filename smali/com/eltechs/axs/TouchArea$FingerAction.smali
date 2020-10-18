.class public Lcom/eltechs/axs/TouchArea$FingerAction;
.super Ljava/lang/Object;
.source "TouchArea.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eltechs/axs/TouchArea;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FingerAction"
.end annotation


# instance fields
.field private action:Lcom/eltechs/axs/TouchArea$FingerActionType;

.field private finger:Lcom/eltechs/axs/Finger;

.field final synthetic this$0:Lcom/eltechs/axs/TouchArea;


# direct methods
.method public constructor <init>(Lcom/eltechs/axs/TouchArea;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/eltechs/axs/TouchArea$FingerAction;->this$0:Lcom/eltechs/axs/TouchArea;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    sget-object p1, Lcom/eltechs/axs/TouchArea$FingerActionType;->NONE:Lcom/eltechs/axs/TouchArea$FingerActionType;

    iput-object p1, p0, Lcom/eltechs/axs/TouchArea$FingerAction;->action:Lcom/eltechs/axs/TouchArea$FingerActionType;

    const/4 p1, 0x0

    .line 50
    iput-object p1, p0, Lcom/eltechs/axs/TouchArea$FingerAction;->finger:Lcom/eltechs/axs/Finger;

    return-void
.end method


# virtual methods
.method public getAction()Lcom/eltechs/axs/TouchArea$FingerActionType;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/eltechs/axs/TouchArea$FingerAction;->action:Lcom/eltechs/axs/TouchArea$FingerActionType;

    return-object v0
.end method

.method public getFinger()Lcom/eltechs/axs/Finger;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/eltechs/axs/TouchArea$FingerAction;->finger:Lcom/eltechs/axs/Finger;

    return-object v0
.end method

.method public set(Lcom/eltechs/axs/Finger;Lcom/eltechs/axs/TouchArea$FingerActionType;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/eltechs/axs/TouchArea$FingerAction;->finger:Lcom/eltechs/axs/Finger;

    .line 66
    iput-object p2, p0, Lcom/eltechs/axs/TouchArea$FingerAction;->action:Lcom/eltechs/axs/TouchArea$FingerActionType;

    return-void
.end method

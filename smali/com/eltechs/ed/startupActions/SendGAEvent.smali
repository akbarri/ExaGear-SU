.class public Lcom/eltechs/ed/startupActions/SendGAEvent;
.super Lcom/eltechs/axs/configuration/startup/actions/AbstractStartupAction;
.source "SendGAEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<StateClass:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/eltechs/axs/configuration/startup/actions/AbstractStartupAction<",
        "TStateClass;>;"
    }
.end annotation


# instance fields
.field final action:Ljava/lang/String;

.field final category:Ljava/lang/String;

.field final label:Ljava/lang/String;

.field final value:Ljava/lang/Long;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/eltechs/axs/configuration/startup/actions/AbstractStartupAction;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/eltechs/ed/startupActions/SendGAEvent;->category:Ljava/lang/String;

    .line 23
    iput-object p2, p0, Lcom/eltechs/ed/startupActions/SendGAEvent;->action:Ljava/lang/String;

    .line 24
    iput-object p3, p0, Lcom/eltechs/ed/startupActions/SendGAEvent;->label:Ljava/lang/String;

    .line 25
    iput-object p4, p0, Lcom/eltechs/ed/startupActions/SendGAEvent;->value:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 5

    .line 31
    invoke-virtual {p0}, Lcom/eltechs/ed/startupActions/SendGAEvent;->getAppContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/eltechs/ed/startupActions/SendGAEvent;->category:Ljava/lang/String;

    iget-object v2, p0, Lcom/eltechs/ed/startupActions/SendGAEvent;->action:Ljava/lang/String;

    iget-object v3, p0, Lcom/eltechs/ed/startupActions/SendGAEvent;->label:Ljava/lang/String;

    iget-object v4, p0, Lcom/eltechs/ed/startupActions/SendGAEvent;->value:Ljava/lang/Long;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/eltechs/axs/helpers/GAHelpers;->GASendEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 32
    invoke-virtual {p0}, Lcom/eltechs/ed/startupActions/SendGAEvent;->sendDone()V

    return-void
.end method

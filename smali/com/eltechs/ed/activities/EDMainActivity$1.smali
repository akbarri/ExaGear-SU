.class Lcom/eltechs/ed/activities/EDMainActivity$1;
.super Ljava/lang/Object;
.source "EDMainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eltechs/ed/activities/EDMainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eltechs/ed/activities/EDMainActivity;


# direct methods
.method constructor <init>(Lcom/eltechs/ed/activities/EDMainActivity;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/eltechs/ed/activities/EDMainActivity$1;->this$0:Lcom/eltechs/ed/activities/EDMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/eltechs/ed/activities/EDMainActivity$1;->this$0:Lcom/eltechs/ed/activities/EDMainActivity;

    invoke-static {v0}, Lcom/eltechs/axs/RateAppDialog;->checkCondAndShow(Landroid/content/Context;)V

    return-void
.end method

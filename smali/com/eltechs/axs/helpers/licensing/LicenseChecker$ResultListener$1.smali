.class Lcom/eltechs/axs/helpers/licensing/LicenseChecker$ResultListener$1;
.super Ljava/lang/Object;
.source "LicenseChecker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eltechs/axs/helpers/licensing/LicenseChecker$ResultListener;-><init>(Lcom/eltechs/axs/helpers/licensing/LicenseChecker;Lcom/eltechs/axs/helpers/licensing/LicenseValidator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/eltechs/axs/helpers/licensing/LicenseChecker$ResultListener;

.field final synthetic val$this$0:Lcom/eltechs/axs/helpers/licensing/LicenseChecker;


# direct methods
.method constructor <init>(Lcom/eltechs/axs/helpers/licensing/LicenseChecker$ResultListener;Lcom/eltechs/axs/helpers/licensing/LicenseChecker;)V
    .locals 0

    .line 204
    iput-object p1, p0, Lcom/eltechs/axs/helpers/licensing/LicenseChecker$ResultListener$1;->this$1:Lcom/eltechs/axs/helpers/licensing/LicenseChecker$ResultListener;

    iput-object p2, p0, Lcom/eltechs/axs/helpers/licensing/LicenseChecker$ResultListener$1;->val$this$0:Lcom/eltechs/axs/helpers/licensing/LicenseChecker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "LicenseChecker"

    const-string v1, "Check timed out."

    .line 206
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    iget-object v0, p0, Lcom/eltechs/axs/helpers/licensing/LicenseChecker$ResultListener$1;->this$1:Lcom/eltechs/axs/helpers/licensing/LicenseChecker$ResultListener;

    iget-object v0, v0, Lcom/eltechs/axs/helpers/licensing/LicenseChecker$ResultListener;->this$0:Lcom/eltechs/axs/helpers/licensing/LicenseChecker;

    iget-object v1, p0, Lcom/eltechs/axs/helpers/licensing/LicenseChecker$ResultListener$1;->this$1:Lcom/eltechs/axs/helpers/licensing/LicenseChecker$ResultListener;

    invoke-static {v1}, Lcom/eltechs/axs/helpers/licensing/LicenseChecker$ResultListener;->access$000(Lcom/eltechs/axs/helpers/licensing/LicenseChecker$ResultListener;)Lcom/eltechs/axs/helpers/licensing/LicenseValidator;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/eltechs/axs/helpers/licensing/LicenseChecker;->access$100(Lcom/eltechs/axs/helpers/licensing/LicenseChecker;Lcom/eltechs/axs/helpers/licensing/LicenseValidator;)V

    .line 208
    iget-object v0, p0, Lcom/eltechs/axs/helpers/licensing/LicenseChecker$ResultListener$1;->this$1:Lcom/eltechs/axs/helpers/licensing/LicenseChecker$ResultListener;

    iget-object v0, v0, Lcom/eltechs/axs/helpers/licensing/LicenseChecker$ResultListener;->this$0:Lcom/eltechs/axs/helpers/licensing/LicenseChecker;

    iget-object v1, p0, Lcom/eltechs/axs/helpers/licensing/LicenseChecker$ResultListener$1;->this$1:Lcom/eltechs/axs/helpers/licensing/LicenseChecker$ResultListener;

    invoke-static {v1}, Lcom/eltechs/axs/helpers/licensing/LicenseChecker$ResultListener;->access$000(Lcom/eltechs/axs/helpers/licensing/LicenseChecker$ResultListener;)Lcom/eltechs/axs/helpers/licensing/LicenseValidator;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/eltechs/axs/helpers/licensing/LicenseChecker;->access$200(Lcom/eltechs/axs/helpers/licensing/LicenseChecker;Lcom/eltechs/axs/helpers/licensing/LicenseValidator;)V

    return-void
.end method

.class Lcom/eltechs/axs/helpers/licensing/LicenseChecker$ResultListener$2;
.super Ljava/lang/Object;
.source "LicenseChecker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eltechs/axs/helpers/licensing/LicenseChecker$ResultListener;->verifyLicense(ILjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/eltechs/axs/helpers/licensing/LicenseChecker$ResultListener;

.field final synthetic val$responseCode:I

.field final synthetic val$signature:Ljava/lang/String;

.field final synthetic val$signedData:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/eltechs/axs/helpers/licensing/LicenseChecker$ResultListener;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 222
    iput-object p1, p0, Lcom/eltechs/axs/helpers/licensing/LicenseChecker$ResultListener$2;->this$1:Lcom/eltechs/axs/helpers/licensing/LicenseChecker$ResultListener;

    iput p2, p0, Lcom/eltechs/axs/helpers/licensing/LicenseChecker$ResultListener$2;->val$responseCode:I

    iput-object p3, p0, Lcom/eltechs/axs/helpers/licensing/LicenseChecker$ResultListener$2;->val$signedData:Ljava/lang/String;

    iput-object p4, p0, Lcom/eltechs/axs/helpers/licensing/LicenseChecker$ResultListener$2;->val$signature:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const-string v0, "LicenseChecker"

    const-string v1, "Received response."

    .line 224
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    iget-object v0, p0, Lcom/eltechs/axs/helpers/licensing/LicenseChecker$ResultListener$2;->this$1:Lcom/eltechs/axs/helpers/licensing/LicenseChecker$ResultListener;

    iget-object v0, v0, Lcom/eltechs/axs/helpers/licensing/LicenseChecker$ResultListener;->this$0:Lcom/eltechs/axs/helpers/licensing/LicenseChecker;

    invoke-static {v0}, Lcom/eltechs/axs/helpers/licensing/LicenseChecker;->access$300(Lcom/eltechs/axs/helpers/licensing/LicenseChecker;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/eltechs/axs/helpers/licensing/LicenseChecker$ResultListener$2;->this$1:Lcom/eltechs/axs/helpers/licensing/LicenseChecker$ResultListener;

    invoke-static {v1}, Lcom/eltechs/axs/helpers/licensing/LicenseChecker$ResultListener;->access$000(Lcom/eltechs/axs/helpers/licensing/LicenseChecker$ResultListener;)Lcom/eltechs/axs/helpers/licensing/LicenseValidator;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/eltechs/axs/helpers/licensing/LicenseChecker$ResultListener$2;->this$1:Lcom/eltechs/axs/helpers/licensing/LicenseChecker$ResultListener;

    invoke-static {v0}, Lcom/eltechs/axs/helpers/licensing/LicenseChecker$ResultListener;->access$400(Lcom/eltechs/axs/helpers/licensing/LicenseChecker$ResultListener;)V

    .line 228
    iget-object v0, p0, Lcom/eltechs/axs/helpers/licensing/LicenseChecker$ResultListener$2;->this$1:Lcom/eltechs/axs/helpers/licensing/LicenseChecker$ResultListener;

    invoke-static {v0}, Lcom/eltechs/axs/helpers/licensing/LicenseChecker$ResultListener;->access$000(Lcom/eltechs/axs/helpers/licensing/LicenseChecker$ResultListener;)Lcom/eltechs/axs/helpers/licensing/LicenseValidator;

    move-result-object v0

    iget-object v1, p0, Lcom/eltechs/axs/helpers/licensing/LicenseChecker$ResultListener$2;->this$1:Lcom/eltechs/axs/helpers/licensing/LicenseChecker$ResultListener;

    iget-object v1, v1, Lcom/eltechs/axs/helpers/licensing/LicenseChecker$ResultListener;->this$0:Lcom/eltechs/axs/helpers/licensing/LicenseChecker;

    invoke-static {v1}, Lcom/eltechs/axs/helpers/licensing/LicenseChecker;->access$500(Lcom/eltechs/axs/helpers/licensing/LicenseChecker;)Ljava/security/PublicKey;

    move-result-object v1

    iget v2, p0, Lcom/eltechs/axs/helpers/licensing/LicenseChecker$ResultListener$2;->val$responseCode:I

    iget-object v3, p0, Lcom/eltechs/axs/helpers/licensing/LicenseChecker$ResultListener$2;->val$signedData:Ljava/lang/String;

    iget-object v4, p0, Lcom/eltechs/axs/helpers/licensing/LicenseChecker$ResultListener$2;->val$signature:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/eltechs/axs/helpers/licensing/LicenseValidator;->verify(Ljava/security/PublicKey;ILjava/lang/String;Ljava/lang/String;)V

    .line 229
    iget-object v0, p0, Lcom/eltechs/axs/helpers/licensing/LicenseChecker$ResultListener$2;->this$1:Lcom/eltechs/axs/helpers/licensing/LicenseChecker$ResultListener;

    iget-object v0, v0, Lcom/eltechs/axs/helpers/licensing/LicenseChecker$ResultListener;->this$0:Lcom/eltechs/axs/helpers/licensing/LicenseChecker;

    iget-object v1, p0, Lcom/eltechs/axs/helpers/licensing/LicenseChecker$ResultListener$2;->this$1:Lcom/eltechs/axs/helpers/licensing/LicenseChecker$ResultListener;

    invoke-static {v1}, Lcom/eltechs/axs/helpers/licensing/LicenseChecker$ResultListener;->access$000(Lcom/eltechs/axs/helpers/licensing/LicenseChecker$ResultListener;)Lcom/eltechs/axs/helpers/licensing/LicenseValidator;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/eltechs/axs/helpers/licensing/LicenseChecker;->access$200(Lcom/eltechs/axs/helpers/licensing/LicenseChecker;Lcom/eltechs/axs/helpers/licensing/LicenseValidator;)V

    :cond_0
    return-void
.end method

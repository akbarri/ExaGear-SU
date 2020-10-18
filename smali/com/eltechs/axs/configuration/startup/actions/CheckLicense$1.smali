.class Lcom/eltechs/axs/configuration/startup/actions/CheckLicense$1;
.super Ljava/lang/Object;
.source "CheckLicense.java"

# interfaces
.implements Lcom/eltechs/axs/helpers/licensing/LicenseCheckerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eltechs/axs/configuration/startup/actions/CheckLicense;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eltechs/axs/configuration/startup/actions/CheckLicense;


# direct methods
.method constructor <init>(Lcom/eltechs/axs/configuration/startup/actions/CheckLicense;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/eltechs/axs/configuration/startup/actions/CheckLicense$1;->this$0:Lcom/eltechs/axs/configuration/startup/actions/CheckLicense;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public allow(I)V
    .locals 0

    .line 62
    iget-object p1, p0, Lcom/eltechs/axs/configuration/startup/actions/CheckLicense$1;->this$0:Lcom/eltechs/axs/configuration/startup/actions/CheckLicense;

    invoke-static {p1}, Lcom/eltechs/axs/configuration/startup/actions/CheckLicense;->access$000(Lcom/eltechs/axs/configuration/startup/actions/CheckLicense;)V

    .line 63
    iget-object p1, p0, Lcom/eltechs/axs/configuration/startup/actions/CheckLicense$1;->this$0:Lcom/eltechs/axs/configuration/startup/actions/CheckLicense;

    invoke-virtual {p1}, Lcom/eltechs/axs/configuration/startup/actions/CheckLicense;->sendDone()V

    return-void
.end method

.method public applicationError(I)V
    .locals 4

    .line 85
    iget-object v0, p0, Lcom/eltechs/axs/configuration/startup/actions/CheckLicense$1;->this$0:Lcom/eltechs/axs/configuration/startup/actions/CheckLicense;

    invoke-static {v0}, Lcom/eltechs/axs/configuration/startup/actions/CheckLicense;->access$000(Lcom/eltechs/axs/configuration/startup/actions/CheckLicense;)V

    const-string v0, "Application error: %1$s, %2$s"

    const/4 v1, 0x2

    .line 86
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/eltechs/axs/configuration/startup/actions/CheckLicense$1;->this$0:Lcom/eltechs/axs/configuration/startup/actions/CheckLicense;

    invoke-static {v2, p1}, Lcom/eltechs/axs/configuration/startup/actions/CheckLicense;->access$100(Lcom/eltechs/axs/configuration/startup/actions/CheckLicense;I)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 87
    iget-object v0, p0, Lcom/eltechs/axs/configuration/startup/actions/CheckLicense$1;->this$0:Lcom/eltechs/axs/configuration/startup/actions/CheckLicense;

    invoke-virtual {v0, p1}, Lcom/eltechs/axs/configuration/startup/actions/CheckLicense;->sendError(Ljava/lang/String;)V

    return-void
.end method

.method public dontAllow(I)V
    .locals 1

    const/16 v0, 0x123

    if-ne p1, v0, :cond_0

    .line 71
    iget-object p1, p0, Lcom/eltechs/axs/configuration/startup/actions/CheckLicense$1;->this$0:Lcom/eltechs/axs/configuration/startup/actions/CheckLicense;

    const-class v0, Lcom/eltechs/axs/activities/CheckLicenseRetryActivity;

    invoke-virtual {p1, v0}, Lcom/eltechs/axs/configuration/startup/actions/CheckLicense;->requestUserInput(Ljava/lang/Class;)V

    goto :goto_0

    .line 74
    :cond_0
    iget-object p1, p0, Lcom/eltechs/axs/configuration/startup/actions/CheckLicense$1;->this$0:Lcom/eltechs/axs/configuration/startup/actions/CheckLicense;

    invoke-static {p1}, Lcom/eltechs/axs/configuration/startup/actions/CheckLicense;->access$000(Lcom/eltechs/axs/configuration/startup/actions/CheckLicense;)V

    .line 75
    iget-object p1, p0, Lcom/eltechs/axs/configuration/startup/actions/CheckLicense$1;->this$0:Lcom/eltechs/axs/configuration/startup/actions/CheckLicense;

    sget v0, Lcom/eltechs/axs/R$string;->cl_unlicensed_message:I

    invoke-static {v0}, Lcom/eltechs/axs/helpers/AndroidHelpers;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/eltechs/axs/configuration/startup/actions/CheckLicense;->sendError(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

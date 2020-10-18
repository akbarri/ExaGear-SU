.class public Lcom/eltechs/axs/configuration/startup/StartupActionInfo;
.super Ljava/lang/Object;
.source "StartupActionInfo.java"


# instance fields
.field private final progressFilename:Ljava/lang/String;

.field private final stepDescription:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/eltechs/axs/configuration/startup/StartupActionInfo;->stepDescription:Ljava/lang/String;

    const/4 p1, 0x0

    .line 11
    iput-object p1, p0, Lcom/eltechs/axs/configuration/startup/StartupActionInfo;->progressFilename:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/eltechs/axs/configuration/startup/StartupActionInfo;->stepDescription:Ljava/lang/String;

    .line 17
    iput-object p2, p0, Lcom/eltechs/axs/configuration/startup/StartupActionInfo;->progressFilename:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getProgressFilename()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/eltechs/axs/configuration/startup/StartupActionInfo;->progressFilename:Ljava/lang/String;

    return-object v0
.end method

.method public getStepDescription()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/eltechs/axs/configuration/startup/StartupActionInfo;->stepDescription:Ljava/lang/String;

    return-object v0
.end method

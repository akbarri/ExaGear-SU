.class public Lcom/eltechs/axs/applicationState/UserApplicationsDirectoryName;
.super Ljava/lang/Object;
.source "UserApplicationsDirectoryName.java"


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/eltechs/axs/applicationState/UserApplicationsDirectoryName;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/eltechs/axs/applicationState/UserApplicationsDirectoryName;->name:Ljava/lang/String;

    return-object v0
.end method

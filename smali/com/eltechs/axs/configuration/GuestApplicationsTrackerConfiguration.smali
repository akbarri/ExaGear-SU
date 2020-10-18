.class public Lcom/eltechs/axs/configuration/GuestApplicationsTrackerConfiguration;
.super Ljava/lang/Object;
.source "GuestApplicationsTrackerConfiguration.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private address:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ".exagear-tracker-app"

    .line 16
    iput-object v0, p0, Lcom/eltechs/axs/configuration/GuestApplicationsTrackerConfiguration;->address:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getSocket()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/eltechs/axs/configuration/GuestApplicationsTrackerConfiguration;->address:Ljava/lang/String;

    return-object v0
.end method

.method public setSocket(Ljava/lang/String;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/eltechs/axs/configuration/GuestApplicationsTrackerConfiguration;->address:Ljava/lang/String;

    return-void
.end method

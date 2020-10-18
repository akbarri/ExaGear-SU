.class public Lcom/eltechs/axs/environmentService/TrayConfiguration;
.super Ljava/lang/Object;
.source "TrayConfiguration.java"


# instance fields
.field private final returnToDescription:I

.field private final trayIcon:I

.field private final trayIconName:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput p1, p0, Lcom/eltechs/axs/environmentService/TrayConfiguration;->trayIcon:I

    .line 22
    iput p2, p0, Lcom/eltechs/axs/environmentService/TrayConfiguration;->trayIconName:I

    .line 24
    iput p3, p0, Lcom/eltechs/axs/environmentService/TrayConfiguration;->returnToDescription:I

    return-void
.end method


# virtual methods
.method public getReturnToDescription()I
    .locals 1

    .line 39
    iget v0, p0, Lcom/eltechs/axs/environmentService/TrayConfiguration;->returnToDescription:I

    return v0
.end method

.method public getTrayIcon()I
    .locals 1

    .line 29
    iget v0, p0, Lcom/eltechs/axs/environmentService/TrayConfiguration;->trayIcon:I

    return v0
.end method

.method public getTrayIconName()I
    .locals 1

    .line 34
    iget v0, p0, Lcom/eltechs/axs/environmentService/TrayConfiguration;->trayIconName:I

    return v0
.end method

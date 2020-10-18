.class public Lcom/eltechs/ed/startupActions/StartGuest$RunExplorer;
.super Ljava/lang/Object;
.source "StartGuest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eltechs/ed/startupActions/StartGuest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RunExplorer"
.end annotation


# instance fields
.field private mCont:Lcom/eltechs/ed/guestContainers/GuestContainer;


# direct methods
.method public constructor <init>(Lcom/eltechs/ed/guestContainers/GuestContainer;)V
    .locals 0

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    iput-object p1, p0, Lcom/eltechs/ed/startupActions/StartGuest$RunExplorer;->mCont:Lcom/eltechs/ed/guestContainers/GuestContainer;

    return-void
.end method

.method static synthetic access$400(Lcom/eltechs/ed/startupActions/StartGuest$RunExplorer;)Lcom/eltechs/ed/guestContainers/GuestContainer;
    .locals 0

    .line 126
    iget-object p0, p0, Lcom/eltechs/ed/startupActions/StartGuest$RunExplorer;->mCont:Lcom/eltechs/ed/guestContainers/GuestContainer;

    return-object p0
.end method

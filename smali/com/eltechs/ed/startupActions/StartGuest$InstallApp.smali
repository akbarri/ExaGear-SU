.class public Lcom/eltechs/ed/startupActions/StartGuest$InstallApp;
.super Ljava/lang/Object;
.source "StartGuest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eltechs/ed/startupActions/StartGuest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InstallApp"
.end annotation


# instance fields
.field private mCont:Lcom/eltechs/ed/guestContainers/GuestContainer;

.field private mExePath:Ljava/lang/String;

.field private mRecipe:Lcom/eltechs/ed/InstallRecipe;


# direct methods
.method public constructor <init>(Lcom/eltechs/ed/guestContainers/GuestContainer;Ljava/lang/String;Lcom/eltechs/ed/InstallRecipe;)V
    .locals 0

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iput-object p1, p0, Lcom/eltechs/ed/startupActions/StartGuest$InstallApp;->mCont:Lcom/eltechs/ed/guestContainers/GuestContainer;

    .line 109
    iput-object p2, p0, Lcom/eltechs/ed/startupActions/StartGuest$InstallApp;->mExePath:Ljava/lang/String;

    .line 110
    iput-object p3, p0, Lcom/eltechs/ed/startupActions/StartGuest$InstallApp;->mRecipe:Lcom/eltechs/ed/InstallRecipe;

    return-void
.end method

.method static synthetic access$000(Lcom/eltechs/ed/startupActions/StartGuest$InstallApp;)Lcom/eltechs/ed/InstallRecipe;
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/eltechs/ed/startupActions/StartGuest$InstallApp;->mRecipe:Lcom/eltechs/ed/InstallRecipe;

    return-object p0
.end method

.method static synthetic access$100(Lcom/eltechs/ed/startupActions/StartGuest$InstallApp;)Ljava/lang/String;
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/eltechs/ed/startupActions/StartGuest$InstallApp;->mExePath:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/eltechs/ed/startupActions/StartGuest$InstallApp;)Lcom/eltechs/ed/guestContainers/GuestContainer;
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/eltechs/ed/startupActions/StartGuest$InstallApp;->mCont:Lcom/eltechs/ed/guestContainers/GuestContainer;

    return-object p0
.end method

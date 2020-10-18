.class public Lcom/google/firebase/auth/GetTokenResult;
.super Ljava/lang/Object;


# instance fields
.field private zzeia:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .annotation build Lcom/google/android/gms/common/internal/Hide;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/auth/GetTokenResult;->zzeia:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getToken()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/auth/GetTokenResult;->zzeia:Ljava/lang/String;

    return-object v0
.end method

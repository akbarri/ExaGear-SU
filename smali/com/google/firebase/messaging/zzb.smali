.class public final Lcom/google/firebase/messaging/zzb;
.super Ljava/lang/Object;


# annotations
.annotation build Lcom/google/android/gms/common/internal/Hide;
.end annotation


# instance fields
.field private zzmni:Ljava/lang/String;

.field private zzmnj:Ljava/lang/String;

.field private zzmnk:Ljava/lang/String;

.field private zzmnl:Ljava/lang/String;

.field private zzmnm:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "_exp_set"

    iput-object v0, p0, Lcom/google/firebase/messaging/zzb;->zzmni:Ljava/lang/String;

    const-string v0, "_exp_activate"

    iput-object v0, p0, Lcom/google/firebase/messaging/zzb;->zzmnj:Ljava/lang/String;

    const-string v0, "_exp_timeout"

    iput-object v0, p0, Lcom/google/firebase/messaging/zzb;->zzmnk:Ljava/lang/String;

    const-string v0, "_exp_expire"

    iput-object v0, p0, Lcom/google/firebase/messaging/zzb;->zzmnl:Ljava/lang/String;

    const-string v0, "_exp_clear"

    iput-object v0, p0, Lcom/google/firebase/messaging/zzb;->zzmnm:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zzbsz()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/messaging/zzb;->zzmnj:Ljava/lang/String;

    return-object v0
.end method

.method public final zzbta()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/messaging/zzb;->zzmnk:Ljava/lang/String;

    return-object v0
.end method

.method public final zzbtb()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/messaging/zzb;->zzmnl:Ljava/lang/String;

    return-object v0
.end method

.method public final zzbtc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/messaging/zzb;->zzmnm:Ljava/lang/String;

    return-object v0
.end method

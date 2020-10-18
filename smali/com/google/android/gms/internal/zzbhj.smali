.class public final Lcom/google/android/gms/internal/zzbhj;
.super Lcom/google/android/gms/internal/zzbgl;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/zzbhj;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzehz:I

.field private final zzgii:Lcom/google/android/gms/internal/zzbhl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzbhk;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbhk;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzbhj;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/internal/zzbhl;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbgl;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzbhj;->zzehz:I

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbhj;->zzgii:Lcom/google/android/gms/internal/zzbhl;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/zzbhl;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbgl;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzbhj;->zzehz:I

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbhj;->zzgii:Lcom/google/android/gms/internal/zzbhl;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/zzbhr;)Lcom/google/android/gms/internal/zzbhj;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbhr<",
            "**>;)",
            "Lcom/google/android/gms/internal/zzbhj;"
        }
    .end annotation

    instance-of v0, p0, Lcom/google/android/gms/internal/zzbhl;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/zzbhj;

    check-cast p0, Lcom/google/android/gms/internal/zzbhl;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzbhj;-><init>(Lcom/google/android/gms/internal/zzbhl;)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unsupported safe parcelable field converter class."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbgo;->zze(Landroid/os/Parcel;)I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/zzbhj;->zzehz:I

    const/4 v2, 0x1

    invoke-static {p1, v2, v1}, Lcom/google/android/gms/internal/zzbgo;->zzc(Landroid/os/Parcel;II)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbhj;->zzgii:Lcom/google/android/gms/internal/zzbhl;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzbgo;->zzai(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final zzand()Lcom/google/android/gms/internal/zzbhr;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/zzbhr<",
            "**>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbhj;->zzgii:Lcom/google/android/gms/internal/zzbhl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbhj;->zzgii:Lcom/google/android/gms/internal/zzbhl;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "There was no converter wrapped in this ConverterWrapper."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

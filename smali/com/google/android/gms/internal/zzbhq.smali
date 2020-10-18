.class public final Lcom/google/android/gms/internal/zzbhq;
.super Lcom/google/android/gms/internal/zzbgl;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Ljava/lang/Object;",
        "O:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/zzbgl;"
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/google/android/gms/internal/zzbht;


# instance fields
.field private final zzehz:I

.field protected final zzgio:I

.field protected final zzgip:Z

.field protected final zzgiq:I

.field protected final zzgir:Z

.field protected final zzgis:Ljava/lang/String;

.field protected final zzgit:I

.field protected final zzgiu:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/android/gms/internal/zzbhp;",
            ">;"
        }
    .end annotation
.end field

.field private zzgiv:Ljava/lang/String;

.field private zzgiw:Lcom/google/android/gms/internal/zzbhv;

.field private zzgix:Lcom/google/android/gms/internal/zzbhr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzbhr<",
            "TI;TO;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzbht;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbht;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzbhq;->CREATOR:Lcom/google/android/gms/internal/zzbht;

    return-void
.end method

.method constructor <init>(IIZIZLjava/lang/String;ILjava/lang/String;Lcom/google/android/gms/internal/zzbhj;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbgl;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzbhq;->zzehz:I

    iput p2, p0, Lcom/google/android/gms/internal/zzbhq;->zzgio:I

    iput-boolean p3, p0, Lcom/google/android/gms/internal/zzbhq;->zzgip:Z

    iput p4, p0, Lcom/google/android/gms/internal/zzbhq;->zzgiq:I

    iput-boolean p5, p0, Lcom/google/android/gms/internal/zzbhq;->zzgir:Z

    iput-object p6, p0, Lcom/google/android/gms/internal/zzbhq;->zzgis:Ljava/lang/String;

    iput p7, p0, Lcom/google/android/gms/internal/zzbhq;->zzgit:I

    const/4 p1, 0x0

    if-nez p8, :cond_0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbhq;->zzgiu:Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbhq;->zzgiv:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-class p2, Lcom/google/android/gms/internal/zzbia;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbhq;->zzgiu:Ljava/lang/Class;

    iput-object p8, p0, Lcom/google/android/gms/internal/zzbhq;->zzgiv:Ljava/lang/String;

    :goto_0
    if-nez p9, :cond_1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbhq;->zzgix:Lcom/google/android/gms/internal/zzbhr;

    return-void

    :cond_1
    invoke-virtual {p9}, Lcom/google/android/gms/internal/zzbhj;->zzand()Lcom/google/android/gms/internal/zzbhr;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbhq;->zzgix:Lcom/google/android/gms/internal/zzbhr;

    return-void
.end method

.method private constructor <init>(IZIZLjava/lang/String;ILjava/lang/Class;Lcom/google/android/gms/internal/zzbhr;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZIZ",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/android/gms/internal/zzbhp;",
            ">;",
            "Lcom/google/android/gms/internal/zzbhr<",
            "TI;TO;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbgl;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzbhq;->zzehz:I

    iput p1, p0, Lcom/google/android/gms/internal/zzbhq;->zzgio:I

    iput-boolean p2, p0, Lcom/google/android/gms/internal/zzbhq;->zzgip:Z

    iput p3, p0, Lcom/google/android/gms/internal/zzbhq;->zzgiq:I

    iput-boolean p4, p0, Lcom/google/android/gms/internal/zzbhq;->zzgir:Z

    iput-object p5, p0, Lcom/google/android/gms/internal/zzbhq;->zzgis:Ljava/lang/String;

    iput p6, p0, Lcom/google/android/gms/internal/zzbhq;->zzgit:I

    iput-object p7, p0, Lcom/google/android/gms/internal/zzbhq;->zzgiu:Ljava/lang/Class;

    if-nez p7, :cond_0

    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/google/android/gms/internal/zzbhq;->zzgiv:Ljava/lang/String;

    goto :goto_1

    :cond_0
    invoke-virtual {p7}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :goto_1
    iput-object p8, p0, Lcom/google/android/gms/internal/zzbhq;->zzgix:Lcom/google/android/gms/internal/zzbhr;

    return-void
.end method

.method public static zza(Ljava/lang/String;ILcom/google/android/gms/internal/zzbhr;Z)Lcom/google/android/gms/internal/zzbhq;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lcom/google/android/gms/internal/zzbhr<",
            "**>;Z)",
            "Lcom/google/android/gms/internal/zzbhq;"
        }
    .end annotation

    new-instance p3, Lcom/google/android/gms/internal/zzbhq;

    const/4 v1, 0x7

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object v0, p3

    move-object v5, p0

    move v6, p1

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/zzbhq;-><init>(IZIZLjava/lang/String;ILjava/lang/Class;Lcom/google/android/gms/internal/zzbhr;)V

    return-object p3
.end method

.method public static zza(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/internal/zzbhq;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/zzbhp;",
            ">(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/google/android/gms/internal/zzbhq<",
            "TT;TT;>;"
        }
    .end annotation

    new-instance v9, Lcom/google/android/gms/internal/zzbhq;

    const/16 v1, 0xb

    const/4 v2, 0x0

    const/16 v3, 0xb

    const/4 v4, 0x0

    const/4 v8, 0x0

    move-object v0, v9

    move-object v5, p0

    move v6, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/zzbhq;-><init>(IZIZLjava/lang/String;ILjava/lang/Class;Lcom/google/android/gms/internal/zzbhr;)V

    return-object v9
.end method

.method private zzanf()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbhq;->zzgiv:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbhq;->zzgiv:Ljava/lang/String;

    return-object v0
.end method

.method public static zzb(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/internal/zzbhq;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/zzbhp;",
            ">(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/google/android/gms/internal/zzbhq<",
            "Ljava/util/ArrayList<",
            "TT;>;",
            "Ljava/util/ArrayList<",
            "TT;>;>;"
        }
    .end annotation

    new-instance v9, Lcom/google/android/gms/internal/zzbhq;

    const/16 v1, 0xb

    const/4 v2, 0x1

    const/16 v3, 0xb

    const/4 v4, 0x1

    const/4 v8, 0x0

    move-object v0, v9

    move-object v5, p0

    move v6, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/zzbhq;-><init>(IZIZLjava/lang/String;ILjava/lang/Class;Lcom/google/android/gms/internal/zzbhr;)V

    return-object v9
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/zzbhq;)Lcom/google/android/gms/internal/zzbhr;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzbhq;->zzgix:Lcom/google/android/gms/internal/zzbhr;

    return-object p0
.end method

.method public static zzj(Ljava/lang/String;I)Lcom/google/android/gms/internal/zzbhq;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lcom/google/android/gms/internal/zzbhq<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v9, Lcom/google/android/gms/internal/zzbhq;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, v9

    move-object v5, p0

    move v6, p1

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/zzbhq;-><init>(IZIZLjava/lang/String;ILjava/lang/Class;Lcom/google/android/gms/internal/zzbhr;)V

    return-object v9
.end method

.method public static zzk(Ljava/lang/String;I)Lcom/google/android/gms/internal/zzbhq;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lcom/google/android/gms/internal/zzbhq<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    new-instance v9, Lcom/google/android/gms/internal/zzbhq;

    const/4 v1, 0x6

    const/4 v2, 0x0

    const/4 v3, 0x6

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, v9

    move-object v5, p0

    move v6, p1

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/zzbhq;-><init>(IZIZLjava/lang/String;ILjava/lang/Class;Lcom/google/android/gms/internal/zzbhr;)V

    return-object v9
.end method

.method public static zzl(Ljava/lang/String;I)Lcom/google/android/gms/internal/zzbhq;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lcom/google/android/gms/internal/zzbhq<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v9, Lcom/google/android/gms/internal/zzbhq;

    const/4 v1, 0x7

    const/4 v2, 0x0

    const/4 v3, 0x7

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, v9

    move-object v5, p0

    move v6, p1

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/zzbhq;-><init>(IZIZLjava/lang/String;ILjava/lang/Class;Lcom/google/android/gms/internal/zzbhr;)V

    return-object v9
.end method

.method public static zzm(Ljava/lang/String;I)Lcom/google/android/gms/internal/zzbhq;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lcom/google/android/gms/internal/zzbhq<",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    new-instance v9, Lcom/google/android/gms/internal/zzbhq;

    const/4 v1, 0x7

    const/4 v2, 0x1

    const/4 v3, 0x7

    const/4 v4, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, v9

    move-object v5, p0

    move v6, p1

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/zzbhq;-><init>(IZIZLjava/lang/String;ILjava/lang/Class;Lcom/google/android/gms/internal/zzbhr;)V

    return-object v9
.end method

.method public static zzn(Ljava/lang/String;I)Lcom/google/android/gms/internal/zzbhq;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lcom/google/android/gms/internal/zzbhq<",
            "[B[B>;"
        }
    .end annotation

    new-instance p1, Lcom/google/android/gms/internal/zzbhq;

    const/16 v1, 0x8

    const/4 v2, 0x0

    const/16 v3, 0x8

    const/4 v4, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p1

    move-object v5, p0

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/zzbhq;-><init>(IZIZLjava/lang/String;ILjava/lang/Class;Lcom/google/android/gms/internal/zzbhr;)V

    return-object p1
.end method


# virtual methods
.method public final convertBack(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TO;)TI;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbhq;->zzgix:Lcom/google/android/gms/internal/zzbhr;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzbhr;->convertBack(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzbg;->zzx(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzbi;

    move-result-object v0

    const-string v1, "versionCode"

    iget v2, p0, Lcom/google/android/gms/internal/zzbhq;->zzehz:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzbi;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzbi;

    move-result-object v0

    const-string v1, "typeIn"

    iget v2, p0, Lcom/google/android/gms/internal/zzbhq;->zzgio:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzbi;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzbi;

    move-result-object v0

    const-string v1, "typeInArray"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzbhq;->zzgip:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzbi;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzbi;

    move-result-object v0

    const-string v1, "typeOut"

    iget v2, p0, Lcom/google/android/gms/internal/zzbhq;->zzgiq:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzbi;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzbi;

    move-result-object v0

    const-string v1, "typeOutArray"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzbhq;->zzgir:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzbi;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzbi;

    move-result-object v0

    const-string v1, "outputFieldName"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbhq;->zzgis:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzbi;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzbi;

    move-result-object v0

    const-string v1, "safeParcelFieldId"

    iget v2, p0, Lcom/google/android/gms/internal/zzbhq;->zzgit:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzbi;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzbi;

    move-result-object v0

    const-string v1, "concreteTypeName"

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbhq;->zzanf()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzbi;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzbi;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbhq;->zzgiu:Ljava/lang/Class;

    if-eqz v1, :cond_0

    const-string v2, "concreteType.class"

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/zzbi;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzbi;

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbhq;->zzgix:Lcom/google/android/gms/internal/zzbhr;

    if-eqz v1, :cond_1

    const-string v1, "converterName"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbhq;->zzgix:Lcom/google/android/gms/internal/zzbhr;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzbi;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzbi;

    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzbi;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbgo;->zze(Landroid/os/Parcel;)I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/zzbhq;->zzehz:I

    const/4 v2, 0x1

    invoke-static {p1, v2, v1}, Lcom/google/android/gms/internal/zzbgo;->zzc(Landroid/os/Parcel;II)V

    iget v1, p0, Lcom/google/android/gms/internal/zzbhq;->zzgio:I

    const/4 v2, 0x2

    invoke-static {p1, v2, v1}, Lcom/google/android/gms/internal/zzbgo;->zzc(Landroid/os/Parcel;II)V

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzbhq;->zzgip:Z

    const/4 v2, 0x3

    invoke-static {p1, v2, v1}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;IZ)V

    iget v1, p0, Lcom/google/android/gms/internal/zzbhq;->zzgiq:I

    const/4 v2, 0x4

    invoke-static {p1, v2, v1}, Lcom/google/android/gms/internal/zzbgo;->zzc(Landroid/os/Parcel;II)V

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzbhq;->zzgir:Z

    const/4 v2, 0x5

    invoke-static {p1, v2, v1}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;IZ)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbhq;->zzgis:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x6

    invoke-static {p1, v3, v1, v2}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget v1, p0, Lcom/google/android/gms/internal/zzbhq;->zzgit:I

    const/4 v3, 0x7

    invoke-static {p1, v3, v1}, Lcom/google/android/gms/internal/zzbgo;->zzc(Landroid/os/Parcel;II)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbhq;->zzanf()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x8

    invoke-static {p1, v3, v1, v2}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbhq;->zzgix:Lcom/google/android/gms/internal/zzbhr;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbhq;->zzgix:Lcom/google/android/gms/internal/zzbhr;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzbhj;->zza(Lcom/google/android/gms/internal/zzbhr;)Lcom/google/android/gms/internal/zzbhj;

    move-result-object v1

    :goto_0
    const/16 v3, 0x9

    invoke-static {p1, v3, v1, p2, v2}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzbgo;->zzai(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzbhv;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbhq;->zzgiw:Lcom/google/android/gms/internal/zzbhv;

    return-void
.end method

.method public final zzane()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzbhq;->zzgit:I

    return v0
.end method

.method public final zzang()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbhq;->zzgix:Lcom/google/android/gms/internal/zzbhr;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzanh()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzbhq<",
            "**>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbhq;->zzgiv:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbhq;->zzgiw:Lcom/google/android/gms/internal/zzbhv;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbhq;->zzgiw:Lcom/google/android/gms/internal/zzbhv;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbhq;->zzgiv:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzbhv;->zzgz(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

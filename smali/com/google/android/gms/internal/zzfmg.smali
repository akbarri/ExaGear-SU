.class public final Lcom/google/android/gms/internal/zzfmg;
.super Lcom/google/android/gms/internal/zzfhu;

# interfaces
.implements Lcom/google/android/gms/internal/zzfje;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzfmg$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzfhu<",
        "Lcom/google/android/gms/internal/zzfmg;",
        "Lcom/google/android/gms/internal/zzfmg$zza;",
        ">;",
        "Lcom/google/android/gms/internal/zzfje;"
    }
.end annotation


# static fields
.field private static volatile zzbbm:Lcom/google/android/gms/internal/zzfjl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzfjl<",
            "Lcom/google/android/gms/internal/zzfmg;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzpxv:Lcom/google/android/gms/internal/zzfmg;


# instance fields
.field private zzmjb:I

.field private zzpxs:I

.field private zzpxt:Ljava/lang/String;

.field private zzpxu:Lcom/google/android/gms/internal/zzfid;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzfid<",
            "Lcom/google/android/gms/internal/zzfgp;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/zzfmg;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzfmg;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzfmg;->zzpxv:Lcom/google/android/gms/internal/zzfmg;

    sget v1, Lcom/google/android/gms/internal/zzfhu$zzg;->zzppw:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/zzfhu;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzfhu;->zzpph:Lcom/google/android/gms/internal/zzfko;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfko;->zzbkr()V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzfhu;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfmg;->zzpxt:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/internal/zzfmg;->zzczs()Lcom/google/android/gms/internal/zzfid;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfmg;->zzpxu:Lcom/google/android/gms/internal/zzfid;

    return-void
.end method

.method public static zzdcu()Lcom/google/android/gms/internal/zzfmg;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzfmg;->zzpxv:Lcom/google/android/gms/internal/zzfmg;

    return-object v0
.end method

.method static synthetic zzdcv()Lcom/google/android/gms/internal/zzfmg;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzfmg;->zzpxv:Lcom/google/android/gms/internal/zzfmg;

    return-object v0
.end method


# virtual methods
.method public final getCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzfmg;->zzpxs:I

    return v0
.end method

.method public final getMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfmg;->zzpxt:Ljava/lang/String;

    return-object v0
.end method

.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Lcom/google/android/gms/internal/zzfmh;->zzbbk:[I

    const/4 v1, 0x1

    sub-int/2addr p1, v1

    aget p1, v0, p1

    const/4 v0, 0x0

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object v2

    :pswitch_1
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/zzfmg;->zzbbm:Lcom/google/android/gms/internal/zzfjl;

    if-nez p1, :cond_1

    const-class p1, Lcom/google/android/gms/internal/zzfmg;

    monitor-enter p1

    :try_start_0
    sget-object p2, Lcom/google/android/gms/internal/zzfmg;->zzbbm:Lcom/google/android/gms/internal/zzfjl;

    if-nez p2, :cond_0

    new-instance p2, Lcom/google/android/gms/internal/zzfhu$zzb;

    sget-object p3, Lcom/google/android/gms/internal/zzfmg;->zzpxv:Lcom/google/android/gms/internal/zzfmg;

    invoke-direct {p2, p3}, Lcom/google/android/gms/internal/zzfhu$zzb;-><init>(Lcom/google/android/gms/internal/zzfhu;)V

    sput-object p2, Lcom/google/android/gms/internal/zzfmg;->zzbbm:Lcom/google/android/gms/internal/zzfjl;

    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    :cond_1
    :goto_0
    sget-object p1, Lcom/google/android/gms/internal/zzfmg;->zzbbm:Lcom/google/android/gms/internal/zzfjl;

    return-object p1

    :pswitch_3
    check-cast p2, Lcom/google/android/gms/internal/zzfhb;

    check-cast p3, Lcom/google/android/gms/internal/zzfhm;

    if-nez p3, :cond_2

    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    :cond_2
    :goto_1
    if-nez v0, :cond_9

    :try_start_1
    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzfhb;->zzcxx()I

    move-result p1

    if-eqz p1, :cond_8

    const/16 v2, 0x8

    if-eq p1, v2, :cond_7

    const/16 v2, 0x12

    if-eq p1, v2, :cond_6

    const/16 v2, 0x1a

    if-eq p1, v2, :cond_3

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/zzfhu;->zza(ILcom/google/android/gms/internal/zzfhb;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_3

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/zzfmg;->zzpxu:Lcom/google/android/gms/internal/zzfid;

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzfid;->zzcxk()Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/google/android/gms/internal/zzfmg;->zzpxu:Lcom/google/android/gms/internal/zzfid;

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzfid;->size()I

    move-result v2

    if-nez v2, :cond_4

    const/16 v2, 0xa

    goto :goto_2

    :cond_4
    shl-int/lit8 v2, v2, 0x1

    :goto_2
    invoke-interface {p1, v2}, Lcom/google/android/gms/internal/zzfid;->zzmo(I)Lcom/google/android/gms/internal/zzfid;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzfmg;->zzpxu:Lcom/google/android/gms/internal/zzfid;

    :cond_5
    iget-object p1, p0, Lcom/google/android/gms/internal/zzfmg;->zzpxu:Lcom/google/android/gms/internal/zzfid;

    invoke-static {}, Lcom/google/android/gms/internal/zzfgp;->zzcxo()Lcom/google/android/gms/internal/zzfgp;

    move-result-object v2

    invoke-virtual {p2, v2, p3}, Lcom/google/android/gms/internal/zzfhb;->zza(Lcom/google/android/gms/internal/zzfhu;Lcom/google/android/gms/internal/zzfhm;)Lcom/google/android/gms/internal/zzfhu;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzfgp;

    invoke-interface {p1, v2}, Lcom/google/android/gms/internal/zzfid;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzfhb;->zzcye()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzfmg;->zzpxt:Ljava/lang/String;

    goto :goto_1

    :cond_7
    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzfhb;->zzcya()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/zzfmg;->zzpxs:I
    :try_end_1
    .catch Lcom/google/android/gms/internal/zzfie; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :cond_8
    :goto_3
    move v0, v1

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception p1

    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Lcom/google/android/gms/internal/zzfie;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/google/android/gms/internal/zzfie;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Lcom/google/android/gms/internal/zzfie;->zzi(Lcom/google/android/gms/internal/zzfjc;)Lcom/google/android/gms/internal/zzfie;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/zzfie;->zzi(Lcom/google/android/gms/internal/zzfjc;)Lcom/google/android/gms/internal/zzfie;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_4
    throw p1

    :cond_9
    :pswitch_4
    sget-object p1, Lcom/google/android/gms/internal/zzfmg;->zzpxv:Lcom/google/android/gms/internal/zzfmg;

    return-object p1

    :pswitch_5
    check-cast p2, Lcom/google/android/gms/internal/zzfhu$zzh;

    check-cast p3, Lcom/google/android/gms/internal/zzfmg;

    iget p1, p0, Lcom/google/android/gms/internal/zzfmg;->zzpxs:I

    if-eqz p1, :cond_a

    move p1, v1

    goto :goto_5

    :cond_a
    move p1, v0

    :goto_5
    iget v2, p0, Lcom/google/android/gms/internal/zzfmg;->zzpxs:I

    iget v3, p3, Lcom/google/android/gms/internal/zzfmg;->zzpxs:I

    if-eqz v3, :cond_b

    move v0, v1

    :cond_b
    iget v3, p3, Lcom/google/android/gms/internal/zzfmg;->zzpxs:I

    invoke-interface {p2, p1, v2, v0, v3}, Lcom/google/android/gms/internal/zzfhu$zzh;->zza(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/zzfmg;->zzpxs:I

    iget-object p1, p0, Lcom/google/android/gms/internal/zzfmg;->zzpxt:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfmg;->zzpxt:Ljava/lang/String;

    iget-object v2, p3, Lcom/google/android/gms/internal/zzfmg;->zzpxt:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    xor-int/2addr v1, v2

    iget-object v2, p3, Lcom/google/android/gms/internal/zzfmg;->zzpxt:Ljava/lang/String;

    invoke-interface {p2, p1, v0, v1, v2}, Lcom/google/android/gms/internal/zzfhu$zzh;->zza(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzfmg;->zzpxt:Ljava/lang/String;

    iget-object p1, p0, Lcom/google/android/gms/internal/zzfmg;->zzpxu:Lcom/google/android/gms/internal/zzfid;

    iget-object v0, p3, Lcom/google/android/gms/internal/zzfmg;->zzpxu:Lcom/google/android/gms/internal/zzfid;

    invoke-interface {p2, p1, v0}, Lcom/google/android/gms/internal/zzfhu$zzh;->zza(Lcom/google/android/gms/internal/zzfid;Lcom/google/android/gms/internal/zzfid;)Lcom/google/android/gms/internal/zzfid;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzfmg;->zzpxu:Lcom/google/android/gms/internal/zzfid;

    sget-object p1, Lcom/google/android/gms/internal/zzfhu$zzf;->zzppq:Lcom/google/android/gms/internal/zzfhu$zzf;

    if-ne p2, p1, :cond_c

    iget p1, p0, Lcom/google/android/gms/internal/zzfmg;->zzmjb:I

    iget p2, p3, Lcom/google/android/gms/internal/zzfmg;->zzmjb:I

    or-int/2addr p1, p2

    iput p1, p0, Lcom/google/android/gms/internal/zzfmg;->zzmjb:I

    :cond_c
    return-object p0

    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/zzfmg$zza;

    invoke-direct {p1, v2}, Lcom/google/android/gms/internal/zzfmg$zza;-><init>(Lcom/google/android/gms/internal/zzfmh;)V

    return-object p1

    :pswitch_7
    iget-object p1, p0, Lcom/google/android/gms/internal/zzfmg;->zzpxu:Lcom/google/android/gms/internal/zzfid;

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzfid;->zzbkr()V

    return-object v2

    :pswitch_8
    sget-object p1, Lcom/google/android/gms/internal/zzfmg;->zzpxv:Lcom/google/android/gms/internal/zzfmg;

    return-object p1

    :pswitch_9
    new-instance p1, Lcom/google/android/gms/internal/zzfmg;

    invoke-direct {p1}, Lcom/google/android/gms/internal/zzfmg;-><init>()V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final zza(Lcom/google/android/gms/internal/zzfhg;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/zzfmg;->zzpxs:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/zzfmg;->zzpxs:I

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/zzfhg;->zzad(II)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfmg;->zzpxt:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfmg;->zzpxt:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzfhg;->zzp(ILjava/lang/String;)V

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzfmg;->zzpxu:Lcom/google/android/gms/internal/zzfid;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzfid;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/internal/zzfmg;->zzpxu:Lcom/google/android/gms/internal/zzfid;

    invoke-interface {v2, v0}, Lcom/google/android/gms/internal/zzfid;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzfjc;

    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/zzfhg;->zza(ILcom/google/android/gms/internal/zzfjc;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfmg;->zzpph:Lcom/google/android/gms/internal/zzfko;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzfko;->zza(Lcom/google/android/gms/internal/zzfhg;)V

    return-void
.end method

.method public final zzhs()I
    .locals 4

    iget v0, p0, Lcom/google/android/gms/internal/zzfmg;->zzppi:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/zzfmg;->zzpxs:I

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/android/gms/internal/zzfmg;->zzpxs:I

    const/4 v2, 0x1

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/zzfhg;->zzag(II)I

    move-result v0

    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/zzfmg;->zzpxt:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzfmg;->zzpxt:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzfhg;->zzq(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/google/android/gms/internal/zzfmg;->zzpxu:Lcom/google/android/gms/internal/zzfid;

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzfid;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/android/gms/internal/zzfmg;->zzpxu:Lcom/google/android/gms/internal/zzfid;

    invoke-interface {v3, v1}, Lcom/google/android/gms/internal/zzfid;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/zzfjc;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzfhg;->zzc(ILcom/google/android/gms/internal/zzfjc;)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/zzfmg;->zzpph:Lcom/google/android/gms/internal/zzfko;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzfko;->zzhs()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/zzfmg;->zzppi:I

    return v0
.end method

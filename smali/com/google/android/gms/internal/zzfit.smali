.class public final Lcom/google/android/gms/internal/zzfit;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field private final zzmbd:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field private final zzpqz:Lcom/google/android/gms/internal/zzfiv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzfiv<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/zzfky;Ljava/lang/Object;Lcom/google/android/gms/internal/zzfky;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzfky;",
            "TK;",
            "Lcom/google/android/gms/internal/zzfky;",
            "TV;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/zzfiv;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/zzfiv;-><init>(Lcom/google/android/gms/internal/zzfky;Ljava/lang/Object;Lcom/google/android/gms/internal/zzfky;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfit;->zzpqz:Lcom/google/android/gms/internal/zzfiv;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzfit;->zzmbd:Ljava/lang/Object;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzfit;->value:Ljava/lang/Object;

    return-void
.end method

.method static zza(Lcom/google/android/gms/internal/zzfiv;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/zzfiv<",
            "TK;TV;>;TK;TV;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfiv;->zzpra:Lcom/google/android/gms/internal/zzfky;

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/zzfhq;->zza(Lcom/google/android/gms/internal/zzfky;ILjava/lang/Object;)I

    move-result p1

    iget-object p0, p0, Lcom/google/android/gms/internal/zzfiv;->zzprc:Lcom/google/android/gms/internal/zzfky;

    const/4 v0, 0x2

    invoke-static {p0, v0, p2}, Lcom/google/android/gms/internal/zzfhq;->zza(Lcom/google/android/gms/internal/zzfky;ILjava/lang/Object;)I

    move-result p0

    add-int/2addr p1, p0

    return p1
.end method

.method public static zza(Lcom/google/android/gms/internal/zzfky;Ljava/lang/Object;Lcom/google/android/gms/internal/zzfky;Ljava/lang/Object;)Lcom/google/android/gms/internal/zzfit;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/zzfky;",
            "TK;",
            "Lcom/google/android/gms/internal/zzfky;",
            "TV;)",
            "Lcom/google/android/gms/internal/zzfit<",
            "TK;TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzfit;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/zzfit;-><init>(Lcom/google/android/gms/internal/zzfky;Ljava/lang/Object;Lcom/google/android/gms/internal/zzfky;Ljava/lang/Object;)V

    return-object v0
.end method

.method private static zza(Lcom/google/android/gms/internal/zzfhb;Lcom/google/android/gms/internal/zzfhm;Lcom/google/android/gms/internal/zzfky;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/zzfhb;",
            "Lcom/google/android/gms/internal/zzfhm;",
            "Lcom/google/android/gms/internal/zzfky;",
            "TT;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/zzfiu;->zzppe:[I

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzfky;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 p1, 0x1

    invoke-static {p0, p2, p1}, Lcom/google/android/gms/internal/zzfhq;->zza(Lcom/google/android/gms/internal/zzfhb;Lcom/google/android/gms/internal/zzfky;Z)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Groups are not allowed in maps."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzfhb;->zzcyh()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast p3, Lcom/google/android/gms/internal/zzfjc;

    invoke-interface {p3}, Lcom/google/android/gms/internal/zzfjc;->zzczt()Lcom/google/android/gms/internal/zzfjd;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Lcom/google/android/gms/internal/zzfhb;->zza(Lcom/google/android/gms/internal/zzfjd;Lcom/google/android/gms/internal/zzfhm;)V

    invoke-interface {p2}, Lcom/google/android/gms/internal/zzfjd;->zzczy()Lcom/google/android/gms/internal/zzfjc;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static zza(Lcom/google/android/gms/internal/zzfhg;Lcom/google/android/gms/internal/zzfiv;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/zzfhg;",
            "Lcom/google/android/gms/internal/zzfiv<",
            "TK;TV;>;TK;TV;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p1, Lcom/google/android/gms/internal/zzfiv;->zzpra:Lcom/google/android/gms/internal/zzfky;

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, p2}, Lcom/google/android/gms/internal/zzfhq;->zza(Lcom/google/android/gms/internal/zzfhg;Lcom/google/android/gms/internal/zzfky;ILjava/lang/Object;)V

    iget-object p1, p1, Lcom/google/android/gms/internal/zzfiv;->zzprc:Lcom/google/android/gms/internal/zzfky;

    const/4 p2, 0x2

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/internal/zzfhq;->zza(Lcom/google/android/gms/internal/zzfhg;Lcom/google/android/gms/internal/zzfky;ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/zzfhg;ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzfhg;",
            "ITK;TV;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/internal/zzfhg;->zzac(II)V

    iget-object p2, p0, Lcom/google/android/gms/internal/zzfit;->zzpqz:Lcom/google/android/gms/internal/zzfiv;

    invoke-static {p2, p3, p4}, Lcom/google/android/gms/internal/zzfit;->zza(Lcom/google/android/gms/internal/zzfiv;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzfhg;->zzlt(I)V

    iget-object p2, p0, Lcom/google/android/gms/internal/zzfit;->zzpqz:Lcom/google/android/gms/internal/zzfiv;

    invoke-static {p1, p2, p3, p4}, Lcom/google/android/gms/internal/zzfit;->zza(Lcom/google/android/gms/internal/zzfhg;Lcom/google/android/gms/internal/zzfiv;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzfiw;Lcom/google/android/gms/internal/zzfhb;Lcom/google/android/gms/internal/zzfhm;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzfiw<",
            "TK;TV;>;",
            "Lcom/google/android/gms/internal/zzfhb;",
            "Lcom/google/android/gms/internal/zzfhm;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzfhb;->zzcym()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/zzfhb;->zzli(I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfit;->zzpqz:Lcom/google/android/gms/internal/zzfiv;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzfiv;->zzprb:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzfit;->zzpqz:Lcom/google/android/gms/internal/zzfiv;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzfiv;->zzinq:Ljava/lang/Object;

    :cond_0
    :goto_0
    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzfhb;->zzcxx()I

    move-result v3

    if-eqz v3, :cond_3

    iget-object v4, p0, Lcom/google/android/gms/internal/zzfit;->zzpqz:Lcom/google/android/gms/internal/zzfiv;

    iget-object v4, v4, Lcom/google/android/gms/internal/zzfiv;->zzpra:Lcom/google/android/gms/internal/zzfky;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzfky;->zzdcj()I

    move-result v4

    const/16 v5, 0x8

    or-int/2addr v4, v5

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lcom/google/android/gms/internal/zzfit;->zzpqz:Lcom/google/android/gms/internal/zzfiv;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzfiv;->zzpra:Lcom/google/android/gms/internal/zzfky;

    invoke-static {p2, p3, v3, v1}, Lcom/google/android/gms/internal/zzfit;->zza(Lcom/google/android/gms/internal/zzfhb;Lcom/google/android/gms/internal/zzfhm;Lcom/google/android/gms/internal/zzfky;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/google/android/gms/internal/zzfit;->zzpqz:Lcom/google/android/gms/internal/zzfiv;

    iget-object v4, v4, Lcom/google/android/gms/internal/zzfiv;->zzprc:Lcom/google/android/gms/internal/zzfky;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzfky;->zzdcj()I

    move-result v4

    const/16 v5, 0x10

    or-int/2addr v4, v5

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzfit;->zzpqz:Lcom/google/android/gms/internal/zzfiv;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzfiv;->zzprc:Lcom/google/android/gms/internal/zzfky;

    invoke-static {p2, p3, v3, v2}, Lcom/google/android/gms/internal/zzfit;->zza(Lcom/google/android/gms/internal/zzfhb;Lcom/google/android/gms/internal/zzfhm;Lcom/google/android/gms/internal/zzfky;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    :cond_2
    invoke-virtual {p2, v3}, Lcom/google/android/gms/internal/zzfhb;->zzlg(I)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/zzfhb;->zzlf(I)V

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/zzfhb;->zzlj(I)V

    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/zzfiw;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final zzb(ILjava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITK;TV;)I"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/internal/zzfhg;->zzlw(I)I

    move-result p1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfit;->zzpqz:Lcom/google/android/gms/internal/zzfiv;

    invoke-static {v0, p2, p3}, Lcom/google/android/gms/internal/zzfit;->zza(Lcom/google/android/gms/internal/zzfiv;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p2

    invoke-static {p2}, Lcom/google/android/gms/internal/zzfhg;->zzmd(I)I

    move-result p2

    add-int/2addr p1, p2

    return p1
.end method

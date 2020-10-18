.class public abstract Lcom/google/android/gms/internal/zzflm;
.super Lcom/google/android/gms/internal/zzfls;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M:",
        "Lcom/google/android/gms/internal/zzflm<",
        "TM;>;>",
        "Lcom/google/android/gms/internal/zzfls;"
    }
.end annotation


# instance fields
.field protected zzpvl:Lcom/google/android/gms/internal/zzflo;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzfls;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzflm;->zzdck()Lcom/google/android/gms/internal/zzflm;

    move-result-object v0

    return-object v0
.end method

.method public final zza(Lcom/google/android/gms/internal/zzfln;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/zzfln<",
            "TM;TT;>;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzflm;->zzpvl:Lcom/google/android/gms/internal/zzflo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzflm;->zzpvl:Lcom/google/android/gms/internal/zzflo;

    iget v2, p1, Lcom/google/android/gms/internal/zzfln;->tag:I

    ushr-int/lit8 v2, v2, 0x3

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzflo;->zzmz(I)Lcom/google/android/gms/internal/zzflp;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzflp;->zzb(Lcom/google/android/gms/internal/zzfln;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public zza(Lcom/google/android/gms/internal/zzflk;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzflm;->zzpvl:Lcom/google/android/gms/internal/zzflo;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzflm;->zzpvl:Lcom/google/android/gms/internal/zzflo;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzflo;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzflm;->zzpvl:Lcom/google/android/gms/internal/zzflo;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzflo;->zzna(I)Lcom/google/android/gms/internal/zzflp;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/zzflp;->zza(Lcom/google/android/gms/internal/zzflk;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected final zza(Lcom/google/android/gms/internal/zzflj;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzflj;->getPosition()I

    move-result v0

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzflj;->zzlg(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    ushr-int/lit8 v1, p2, 0x3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzflj;->getPosition()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/zzflj;->zzao(II)[B

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/internal/zzflu;

    invoke-direct {v0, p2, p1}, Lcom/google/android/gms/internal/zzflu;-><init>(I[B)V

    const/4 p1, 0x0

    iget-object p2, p0, Lcom/google/android/gms/internal/zzflm;->zzpvl:Lcom/google/android/gms/internal/zzflo;

    if-nez p2, :cond_1

    new-instance p2, Lcom/google/android/gms/internal/zzflo;

    invoke-direct {p2}, Lcom/google/android/gms/internal/zzflo;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/zzflm;->zzpvl:Lcom/google/android/gms/internal/zzflo;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/zzflm;->zzpvl:Lcom/google/android/gms/internal/zzflo;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/zzflo;->zzmz(I)Lcom/google/android/gms/internal/zzflp;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_2

    new-instance p1, Lcom/google/android/gms/internal/zzflp;

    invoke-direct {p1}, Lcom/google/android/gms/internal/zzflp;-><init>()V

    iget-object p2, p0, Lcom/google/android/gms/internal/zzflm;->zzpvl:Lcom/google/android/gms/internal/zzflo;

    invoke-virtual {p2, v1, p1}, Lcom/google/android/gms/internal/zzflo;->zza(ILcom/google/android/gms/internal/zzflp;)V

    :cond_2
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzflp;->zza(Lcom/google/android/gms/internal/zzflu;)V

    const/4 p1, 0x1

    return p1
.end method

.method public zzdck()Lcom/google/android/gms/internal/zzflm;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TM;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Lcom/google/android/gms/internal/zzfls;->zzdcl()Lcom/google/android/gms/internal/zzfls;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzflm;

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/zzflq;->zza(Lcom/google/android/gms/internal/zzflm;Lcom/google/android/gms/internal/zzflm;)V

    return-object v0
.end method

.method public synthetic zzdcl()Lcom/google/android/gms/internal/zzfls;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzfls;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzflm;

    return-object v0
.end method

.method protected zzq()I
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzflm;->zzpvl:Lcom/google/android/gms/internal/zzflo;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/zzflm;->zzpvl:Lcom/google/android/gms/internal/zzflo;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzflo;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzflm;->zzpvl:Lcom/google/android/gms/internal/zzflo;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/zzflo;->zzna(I)Lcom/google/android/gms/internal/zzflp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzflp;->zzq()I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :cond_1
    return v0
.end method

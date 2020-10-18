.class public final Lcom/google/android/gms/internal/zzbht;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation build Lcom/google/android/gms/common/internal/Hide;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/google/android/gms/internal/zzbhq;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 13

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbgm;->zzd(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v9, v1

    move-object v11, v9

    move-object v12, v11

    move v4, v2

    move v5, v4

    move v6, v5

    move v7, v6

    move v8, v7

    move v10, v8

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    if-ge v1, v0, :cond_0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const v2, 0xffff

    and-int/2addr v2, v1

    packed-switch v2, :pswitch_data_0

    invoke-static {p1, v1}, Lcom/google/android/gms/internal/zzbgm;->zzb(Landroid/os/Parcel;I)V

    goto :goto_0

    :pswitch_0
    sget-object v2, Lcom/google/android/gms/internal/zzbhj;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/zzbgm;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lcom/google/android/gms/internal/zzbhj;

    goto :goto_0

    :pswitch_1
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/zzbgm;->zzq(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v11

    goto :goto_0

    :pswitch_2
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/zzbgm;->zzg(Landroid/os/Parcel;I)I

    move-result v10

    goto :goto_0

    :pswitch_3
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/zzbgm;->zzq(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    :pswitch_4
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/zzbgm;->zzc(Landroid/os/Parcel;I)Z

    move-result v8

    goto :goto_0

    :pswitch_5
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/zzbgm;->zzg(Landroid/os/Parcel;I)I

    move-result v7

    goto :goto_0

    :pswitch_6
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/zzbgm;->zzc(Landroid/os/Parcel;I)Z

    move-result v6

    goto :goto_0

    :pswitch_7
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/zzbgm;->zzg(Landroid/os/Parcel;I)I

    move-result v5

    goto :goto_0

    :pswitch_8
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/zzbgm;->zzg(Landroid/os/Parcel;I)I

    move-result v4

    goto :goto_0

    :cond_0
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzbgm;->zzaf(Landroid/os/Parcel;I)V

    new-instance p1, Lcom/google/android/gms/internal/zzbhq;

    move-object v3, p1

    invoke-direct/range {v3 .. v12}, Lcom/google/android/gms/internal/zzbhq;-><init>(IIZIZLjava/lang/String;ILjava/lang/String;Lcom/google/android/gms/internal/zzbhj;)V

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    new-array p1, p1, [Lcom/google/android/gms/internal/zzbhq;

    return-object p1
.end method

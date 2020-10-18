.class public abstract Lcom/google/android/gms/internal/zzfgl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzfjc;
.implements Ljava/lang/Cloneable;


# instance fields
.field private zzpnq:Z

.field private zzpnr:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzfgl;->zzpnq:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzfgl;->zzpnr:I

    return-void
.end method


# virtual methods
.method public synthetic clone()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "clone() should be implemented by subclasses."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

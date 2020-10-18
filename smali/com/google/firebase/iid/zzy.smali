.class final Lcom/google/firebase/iid/zzy;
.super Landroid/os/Handler;


# instance fields
.field private synthetic zzoli:Lcom/google/firebase/iid/zzx;


# direct methods
.method constructor <init>(Lcom/google/firebase/iid/zzx;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/iid/zzy;->zzoli:Lcom/google/firebase/iid/zzx;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/iid/zzy;->zzoli:Lcom/google/firebase/iid/zzx;

    invoke-static {v0, p1}, Lcom/google/firebase/iid/zzx;->zza(Lcom/google/firebase/iid/zzx;Landroid/os/Message;)V

    return-void
.end method

.class public interface abstract Lcom/android/vending/licensing/ILicensingService;
.super Ljava/lang/Object;
.source "ILicensingService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/vending/licensing/ILicensingService$Stub;
    }
.end annotation


# virtual methods
.method public abstract checkLicense(JLjava/lang/String;Lcom/android/vending/licensing/ILicenseResultListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

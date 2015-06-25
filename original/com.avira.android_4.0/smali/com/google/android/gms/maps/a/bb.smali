.class public abstract Lcom/google/android/gms/maps/a/bb;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/google/android/gms/maps/a/ba;


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 2

    const/4 v0, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    :sswitch_0
    const-string v1, "com.google.android.gms.maps.internal.IOnMarkerDragListener"

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    const-string v1, "com.google.android.gms.maps.internal.IOnMarkerDragListener"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/maps/model/a/n;->a(Landroid/os/IBinder;)Lcom/google/android/gms/maps/model/a/m;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/maps/a/bb;->a(Lcom/google/android/gms/maps/model/a/m;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :sswitch_2
    const-string v1, "com.google.android.gms.maps.internal.IOnMarkerDragListener"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/maps/model/a/n;->a(Landroid/os/IBinder;)Lcom/google/android/gms/maps/model/a/m;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/maps/a/bb;->b(Lcom/google/android/gms/maps/model/a/m;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :sswitch_3
    const-string v1, "com.google.android.gms.maps.internal.IOnMarkerDragListener"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/maps/model/a/n;->a(Landroid/os/IBinder;)Lcom/google/android/gms/maps/model/a/m;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/maps/a/bb;->c(Lcom/google/android/gms/maps/model/a/m;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method

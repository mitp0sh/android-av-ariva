.class public interface abstract Lcom/google/android/gms/games/multiplayer/realtime/Room;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/google/android/gms/common/data/d;
.implements Lcom/google/android/gms/games/multiplayer/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Lcom/google/android/gms/common/data/d",
        "<",
        "Lcom/google/android/gms/games/multiplayer/realtime/Room;",
        ">;",
        "Lcom/google/android/gms/games/multiplayer/f;"
    }
.end annotation


# static fields
.field public static final ROOM_STATUS_ACTIVE:I = 0x3

.field public static final ROOM_STATUS_AUTO_MATCHING:I = 0x1

.field public static final ROOM_STATUS_CONNECTING:I = 0x2

.field public static final ROOM_STATUS_INVITING:I = 0x0

.field public static final ROOM_VARIANT_DEFAULT:I = -0x1


# virtual methods
.method public abstract b()Ljava/lang/String;
.end method

.method public abstract c()Ljava/lang/String;
.end method

.method public abstract d()J
.end method

.method public abstract e()I
.end method

.method public abstract f()Ljava/lang/String;
.end method

.method public abstract g()I
.end method

.method public abstract h()Landroid/os/Bundle;
.end method

.method public abstract i()I
.end method

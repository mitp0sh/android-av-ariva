.class public interface abstract Lcom/google/android/gms/games/multiplayer/Invitation;
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
        "Lcom/google/android/gms/games/multiplayer/Invitation;",
        ">;",
        "Lcom/google/android/gms/games/multiplayer/f;"
    }
.end annotation


# static fields
.field public static final INVITATION_TYPE_REAL_TIME:I = 0x0

.field public static final INVITATION_TYPE_TURN_BASED:I = 0x1


# virtual methods
.method public abstract b()Lcom/google/android/gms/games/Game;
.end method

.method public abstract c()Ljava/lang/String;
.end method

.method public abstract d()Lcom/google/android/gms/games/multiplayer/Participant;
.end method

.method public abstract e()J
.end method

.method public abstract f()I
.end method

.method public abstract g()I
.end method

.method public abstract h()I
.end method

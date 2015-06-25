.class public interface abstract Lcom/google/android/gms/games/multiplayer/Participant;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/google/android/gms/common/data/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Lcom/google/android/gms/common/data/d",
        "<",
        "Lcom/google/android/gms/games/multiplayer/Participant;",
        ">;"
    }
.end annotation


# static fields
.field public static final STATUS_DECLINED:I = 0x3

.field public static final STATUS_FINISHED:I = 0x5

.field public static final STATUS_INVITED:I = 0x1

.field public static final STATUS_JOINED:I = 0x2

.field public static final STATUS_LEFT:I = 0x4

.field public static final STATUS_NOT_INVITED_YET:I = 0x0

.field public static final STATUS_UNRESPONSIVE:I = 0x6


# virtual methods
.method public abstract b()I
.end method

.method public abstract c()Ljava/lang/String;
.end method

.method public abstract d()I
.end method

.method public abstract e()Z
.end method

.method public abstract f()Ljava/lang/String;
.end method

.method public abstract g()Landroid/net/Uri;
.end method

.method public abstract h()Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract i()Landroid/net/Uri;
.end method

.method public abstract j()Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract k()Ljava/lang/String;
.end method

.method public abstract l()Lcom/google/android/gms/games/Player;
.end method

.method public abstract m()Lcom/google/android/gms/games/multiplayer/ParticipantResult;
.end method

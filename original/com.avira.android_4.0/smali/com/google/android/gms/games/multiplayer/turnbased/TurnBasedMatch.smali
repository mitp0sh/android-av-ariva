.class public interface abstract Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;
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
        "Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;",
        ">;",
        "Lcom/google/android/gms/games/multiplayer/f;"
    }
.end annotation


# static fields
.field public static final MATCH_STATUS_ACTIVE:I = 0x1

.field public static final MATCH_STATUS_AUTO_MATCHING:I = 0x0

.field public static final MATCH_STATUS_CANCELED:I = 0x4

.field public static final MATCH_STATUS_COMPLETE:I = 0x2

.field public static final MATCH_STATUS_EXPIRED:I = 0x3

.field public static final MATCH_TURN_STATUS_ALL:[I

.field public static final MATCH_TURN_STATUS_COMPLETE:I = 0x3

.field public static final MATCH_TURN_STATUS_INVITED:I = 0x0

.field public static final MATCH_TURN_STATUS_MY_TURN:I = 0x1

.field public static final MATCH_TURN_STATUS_THEIR_TURN:I = 0x2

.field public static final MATCH_VARIANT_DEFAULT:I = -0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->MATCH_TURN_STATUS_ALL:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x3
    .end array-data
.end method


# virtual methods
.method public abstract b()Lcom/google/android/gms/games/Game;
.end method

.method public abstract c()Ljava/lang/String;
.end method

.method public abstract d()Ljava/lang/String;
.end method

.method public abstract e()J
.end method

.method public abstract f()I
.end method

.method public abstract g()I
.end method

.method public abstract h()Ljava/lang/String;
.end method

.method public abstract i()I
.end method

.method public abstract k()Ljava/lang/String;
.end method

.method public abstract l()J
.end method

.method public abstract m()Ljava/lang/String;
.end method

.method public abstract n()[B
.end method

.method public abstract o()I
.end method

.method public abstract p()Ljava/lang/String;
.end method

.method public abstract q()[B
.end method

.method public abstract r()I
.end method

.method public abstract s()Landroid/os/Bundle;
.end method

.method public abstract t()I
.end method

.method public abstract u()Z
.end method

.method public abstract v()Ljava/lang/String;
.end method

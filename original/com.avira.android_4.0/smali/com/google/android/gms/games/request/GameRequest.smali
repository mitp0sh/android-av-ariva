.class public interface abstract Lcom/google/android/gms/games/request/GameRequest;
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
        "Lcom/google/android/gms/games/request/GameRequest;",
        ">;"
    }
.end annotation


# static fields
.field public static final RECIPIENT_STATUS_ACCEPTED:I = 0x1

.field public static final RECIPIENT_STATUS_PENDING:I = 0x0

.field public static final TYPE_ALL:I = 0xffff

.field public static final TYPE_GIFT:I = 0x1

.field public static final TYPE_WISH:I = 0x2


# virtual methods
.method public abstract a(Ljava/lang/String;)I
.end method

.method public abstract b()Ljava/lang/String;
.end method

.method public abstract c()Lcom/google/android/gms/games/Game;
.end method

.method public abstract d()Lcom/google/android/gms/games/Player;
.end method

.method public abstract e()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/games/Player;",
            ">;"
        }
    .end annotation
.end method

.method public abstract f()[B
.end method

.method public abstract g()I
.end method

.method public abstract h()J
.end method

.method public abstract i()J
.end method

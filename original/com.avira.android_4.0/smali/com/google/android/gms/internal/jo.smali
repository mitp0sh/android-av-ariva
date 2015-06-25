.class public final Lcom/google/android/gms/internal/jo;
.super Ljava/lang/Object;


# static fields
.field private static a:I

.field private static b:I


# instance fields
.field private final c:Ljava/lang/String;

.field private final d:I

.field private final e:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/google/android/gms/internal/hx$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x2710

    sput v0, Lcom/google/android/gms/internal/jo;->a:I

    const/16 v0, 0x3e8

    sput v0, Lcom/google/android/gms/internal/jo;->b:I

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/jg;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/jo;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/jg;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/jg;

    iget v0, p0, Lcom/google/android/gms/internal/jo;->d:I

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/jg;->a(I)Lcom/google/android/gms/internal/jg;

    iget-object v0, p0, Lcom/google/android/gms/internal/jo;->e:Ljava/util/concurrent/BlockingQueue;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/jg;->a()Lcom/google/android/gms/internal/hx$a;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    return-void
.end method

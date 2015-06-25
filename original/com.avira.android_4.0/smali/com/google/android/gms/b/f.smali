.class final Lcom/google/android/gms/b/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/b/g;


# instance fields
.field final synthetic a:Lcom/google/android/gms/b/b;


# direct methods
.method constructor <init>(Lcom/google/android/gms/b/b;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/b/f;->a:Lcom/google/android/gms/b/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/f;->a:Lcom/google/android/gms/b/b;

    invoke-static {v0}, Lcom/google/android/gms/b/b;->b(Lcom/google/android/gms/b/b;)Lcom/google/android/gms/b/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/b/a;->a()V

    return-void
.end method

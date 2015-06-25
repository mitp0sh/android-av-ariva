.class final Lcom/google/android/gms/tagmanager/bj;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/tagmanager/i;

.field final synthetic b:Lcom/google/android/gms/tagmanager/bh;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tagmanager/bh;Lcom/google/android/gms/tagmanager/i;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/bj;->b:Lcom/google/android/gms/tagmanager/bh;

    iput-object p2, p0, Lcom/google/android/gms/tagmanager/bj;->a:Lcom/google/android/gms/tagmanager/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/bj;->a:Lcom/google/android/gms/tagmanager/i;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/bj;->b:Lcom/google/android/gms/tagmanager/bh;

    invoke-static {v1}, Lcom/google/android/gms/tagmanager/bh;->a(Lcom/google/android/gms/tagmanager/bh;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/tagmanager/i;->a(Ljava/util/List;)V

    return-void
.end method

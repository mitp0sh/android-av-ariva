.class final Lcom/google/android/gms/tagmanager/ar;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tagmanager/as;


# instance fields
.field final synthetic a:Lcom/google/android/gms/tagmanager/ap;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tagmanager/ap;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/ar;->a:Lcom/google/android/gms/tagmanager/ap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/tagmanager/an;Ljava/util/Set;Ljava/util/Set;Lcom/google/android/gms/tagmanager/ak;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tagmanager/an;",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/tagmanager/am;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/tagmanager/am;",
            ">;",
            "Lcom/google/android/gms/tagmanager/ak;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/an;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/an;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-interface {p4}, Lcom/google/android/gms/tagmanager/ak;->e()Lcom/google/android/gms/tagmanager/ai;

    invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/an;->c()Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/an;->e()Ljava/util/List;

    invoke-interface {p4}, Lcom/google/android/gms/tagmanager/ak;->f()Lcom/google/android/gms/tagmanager/ai;

    invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/an;->d()Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/an;->f()Ljava/util/List;

    return-void
.end method

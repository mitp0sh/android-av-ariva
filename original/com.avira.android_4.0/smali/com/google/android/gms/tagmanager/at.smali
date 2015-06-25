.class final Lcom/google/android/gms/tagmanager/at;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/google/android/gms/tagmanager/ae;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tagmanager/ae",
            "<",
            "Lcom/google/android/gms/internal/ei;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/google/android/gms/internal/ei;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/tagmanager/ae;Lcom/google/android/gms/internal/ei;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tagmanager/ae",
            "<",
            "Lcom/google/android/gms/internal/ei;",
            ">;",
            "Lcom/google/android/gms/internal/ei;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/at;->a:Lcom/google/android/gms/tagmanager/ae;

    iput-object p2, p0, Lcom/google/android/gms/tagmanager/at;->b:Lcom/google/android/gms/internal/ei;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/tagmanager/ae;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tagmanager/ae",
            "<",
            "Lcom/google/android/gms/internal/ei;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/at;->a:Lcom/google/android/gms/tagmanager/ae;

    return-object v0
.end method

.method public final b()Lcom/google/android/gms/internal/ei;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/at;->b:Lcom/google/android/gms/internal/ei;

    return-object v0
.end method

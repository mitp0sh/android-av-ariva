.class public final Lcom/google/android/gms/internal/lu;
.super Ljava/lang/Object;


# instance fields
.field public final a:Landroid/widget/ViewSwitcher;

.field public final b:Ljava/lang/String;

.field public final c:Landroid/content/Context;

.field public final d:Lcom/google/android/gms/internal/lf;

.field public final e:Lcom/google/android/gms/internal/db;

.field public f:Lcom/google/android/gms/internal/d;

.field public g:Lcom/google/android/gms/internal/du;

.field public h:Lcom/google/android/gms/internal/ab;

.field public i:Lcom/google/android/gms/internal/dn;

.field public j:Lcom/google/android/gms/internal/do;

.field public k:Lcom/google/android/gms/internal/m;

.field public l:Lcom/google/android/gms/internal/ds;

.field private m:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/google/android/gms/internal/do;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ab;Ljava/lang/String;Lcom/google/android/gms/internal/db;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/lu;->l:Lcom/google/android/gms/internal/ds;

    iput-object v1, p0, Lcom/google/android/gms/internal/lu;->m:Ljava/util/HashSet;

    iget-boolean v0, p2, Lcom/google/android/gms/internal/ab;->e:Z

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/google/android/gms/internal/lu;->a:Landroid/widget/ViewSwitcher;

    :goto_0
    iput-object p2, p0, Lcom/google/android/gms/internal/lu;->h:Lcom/google/android/gms/internal/ab;

    iput-object p3, p0, Lcom/google/android/gms/internal/lu;->b:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/lu;->c:Landroid/content/Context;

    new-instance v0, Lcom/google/android/gms/internal/lf;

    iget-object v1, p4, Lcom/google/android/gms/internal/db;->b:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/kx;->a(Ljava/lang/String;Landroid/content/Context;)Lcom/google/android/gms/internal/kx;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/lf;-><init>(Lcom/google/android/gms/internal/ix;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/lu;->d:Lcom/google/android/gms/internal/lf;

    iput-object p4, p0, Lcom/google/android/gms/internal/lu;->e:Lcom/google/android/gms/internal/db;

    return-void

    :cond_0
    new-instance v0, Landroid/widget/ViewSwitcher;

    invoke-direct {v0, p1}, Landroid/widget/ViewSwitcher;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/lu;->a:Landroid/widget/ViewSwitcher;

    iget-object v0, p0, Lcom/google/android/gms/internal/lu;->a:Landroid/widget/ViewSwitcher;

    iget v1, p2, Lcom/google/android/gms/internal/ab;->g:I

    invoke-virtual {v0, v1}, Landroid/widget/ViewSwitcher;->setMinimumWidth(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/lu;->a:Landroid/widget/ViewSwitcher;

    iget v1, p2, Lcom/google/android/gms/internal/ab;->d:I

    invoke-virtual {v0, v1}, Landroid/widget/ViewSwitcher;->setMinimumHeight(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/lu;->a:Landroid/widget/ViewSwitcher;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ViewSwitcher;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public final a()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Lcom/google/android/gms/internal/do;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/lu;->m:Ljava/util/HashSet;

    return-object v0
.end method

.method public final a(Ljava/util/HashSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Lcom/google/android/gms/internal/do;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/internal/lu;->m:Ljava/util/HashSet;

    return-void
.end method

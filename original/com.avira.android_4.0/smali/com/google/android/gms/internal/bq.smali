.class public final Lcom/google/android/gms/internal/bq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/internal/bt;


# instance fields
.field public final a:I

.field public final b:Lcom/google/android/gms/internal/bn;

.field public final c:Lcom/google/android/gms/internal/ls;

.field public final d:Lcom/google/android/gms/internal/bu;

.field public final e:Lcom/google/android/gms/internal/el;

.field public final f:Lcom/google/android/gms/internal/t;

.field public final g:Ljava/lang/String;

.field public final h:Z

.field public final i:Ljava/lang/String;

.field public final j:Lcom/google/android/gms/internal/bz;

.field public final k:I

.field public final l:I

.field public final m:Ljava/lang/String;

.field public final n:Lcom/google/android/gms/internal/db;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/bt;

    invoke-direct {v0}, Lcom/google/android/gms/internal/bt;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/bq;->CREATOR:Lcom/google/android/gms/internal/bt;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/internal/bn;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/os/IBinder;Ljava/lang/String;ZLjava/lang/String;Landroid/os/IBinder;IILjava/lang/String;Lcom/google/android/gms/internal/db;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/bq;->a:I

    iput-object p2, p0, Lcom/google/android/gms/internal/bq;->b:Lcom/google/android/gms/internal/bn;

    invoke-static {p3}, Lcom/google/android/gms/b/i;->a(Landroid/os/IBinder;)Lcom/google/android/gms/b/h;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/b/k;->a(Lcom/google/android/gms/b/h;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ls;

    iput-object v0, p0, Lcom/google/android/gms/internal/bq;->c:Lcom/google/android/gms/internal/ls;

    invoke-static {p4}, Lcom/google/android/gms/b/i;->a(Landroid/os/IBinder;)Lcom/google/android/gms/b/h;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/b/k;->a(Lcom/google/android/gms/b/h;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/bu;

    iput-object v0, p0, Lcom/google/android/gms/internal/bq;->d:Lcom/google/android/gms/internal/bu;

    invoke-static {p5}, Lcom/google/android/gms/b/i;->a(Landroid/os/IBinder;)Lcom/google/android/gms/b/h;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/b/k;->a(Lcom/google/android/gms/b/h;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/el;

    iput-object v0, p0, Lcom/google/android/gms/internal/bq;->e:Lcom/google/android/gms/internal/el;

    invoke-static {p6}, Lcom/google/android/gms/b/i;->a(Landroid/os/IBinder;)Lcom/google/android/gms/b/h;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/b/k;->a(Lcom/google/android/gms/b/h;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/t;

    iput-object v0, p0, Lcom/google/android/gms/internal/bq;->f:Lcom/google/android/gms/internal/t;

    iput-object p7, p0, Lcom/google/android/gms/internal/bq;->g:Ljava/lang/String;

    iput-boolean p8, p0, Lcom/google/android/gms/internal/bq;->h:Z

    iput-object p9, p0, Lcom/google/android/gms/internal/bq;->i:Ljava/lang/String;

    invoke-static {p10}, Lcom/google/android/gms/b/i;->a(Landroid/os/IBinder;)Lcom/google/android/gms/b/h;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/b/k;->a(Lcom/google/android/gms/b/h;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/bz;

    iput-object v0, p0, Lcom/google/android/gms/internal/bq;->j:Lcom/google/android/gms/internal/bz;

    iput p11, p0, Lcom/google/android/gms/internal/bq;->k:I

    iput p12, p0, Lcom/google/android/gms/internal/bq;->l:I

    iput-object p13, p0, Lcom/google/android/gms/internal/bq;->m:Ljava/lang/String;

    iput-object p14, p0, Lcom/google/android/gms/internal/bq;->n:Lcom/google/android/gms/internal/db;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/bn;Lcom/google/android/gms/internal/ls;Lcom/google/android/gms/internal/bu;Lcom/google/android/gms/internal/bz;Lcom/google/android/gms/internal/db;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/bq;->a:I

    iput-object p1, p0, Lcom/google/android/gms/internal/bq;->b:Lcom/google/android/gms/internal/bn;

    iput-object p2, p0, Lcom/google/android/gms/internal/bq;->c:Lcom/google/android/gms/internal/ls;

    iput-object p3, p0, Lcom/google/android/gms/internal/bq;->d:Lcom/google/android/gms/internal/bu;

    iput-object v1, p0, Lcom/google/android/gms/internal/bq;->e:Lcom/google/android/gms/internal/el;

    iput-object v1, p0, Lcom/google/android/gms/internal/bq;->f:Lcom/google/android/gms/internal/t;

    iput-object v1, p0, Lcom/google/android/gms/internal/bq;->g:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/bq;->h:Z

    iput-object v1, p0, Lcom/google/android/gms/internal/bq;->i:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/bq;->j:Lcom/google/android/gms/internal/bz;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/bq;->k:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/google/android/gms/internal/bq;->l:I

    iput-object v1, p0, Lcom/google/android/gms/internal/bq;->m:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/bq;->n:Lcom/google/android/gms/internal/db;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ls;Lcom/google/android/gms/internal/bu;Lcom/google/android/gms/internal/bz;Lcom/google/android/gms/internal/el;ILcom/google/android/gms/internal/db;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lcom/google/android/gms/internal/bq;->a:I

    iput-object v1, p0, Lcom/google/android/gms/internal/bq;->b:Lcom/google/android/gms/internal/bn;

    iput-object p1, p0, Lcom/google/android/gms/internal/bq;->c:Lcom/google/android/gms/internal/ls;

    iput-object p2, p0, Lcom/google/android/gms/internal/bq;->d:Lcom/google/android/gms/internal/bu;

    iput-object p4, p0, Lcom/google/android/gms/internal/bq;->e:Lcom/google/android/gms/internal/el;

    iput-object v1, p0, Lcom/google/android/gms/internal/bq;->f:Lcom/google/android/gms/internal/t;

    iput-object v1, p0, Lcom/google/android/gms/internal/bq;->g:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/bq;->h:Z

    iput-object v1, p0, Lcom/google/android/gms/internal/bq;->i:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/bq;->j:Lcom/google/android/gms/internal/bz;

    iput p5, p0, Lcom/google/android/gms/internal/bq;->k:I

    iput v2, p0, Lcom/google/android/gms/internal/bq;->l:I

    iput-object v1, p0, Lcom/google/android/gms/internal/bq;->m:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/internal/bq;->n:Lcom/google/android/gms/internal/db;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ls;Lcom/google/android/gms/internal/bu;Lcom/google/android/gms/internal/bz;Lcom/google/android/gms/internal/el;ZILcom/google/android/gms/internal/db;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/bq;->a:I

    iput-object v1, p0, Lcom/google/android/gms/internal/bq;->b:Lcom/google/android/gms/internal/bn;

    iput-object p1, p0, Lcom/google/android/gms/internal/bq;->c:Lcom/google/android/gms/internal/ls;

    iput-object p2, p0, Lcom/google/android/gms/internal/bq;->d:Lcom/google/android/gms/internal/bu;

    iput-object p4, p0, Lcom/google/android/gms/internal/bq;->e:Lcom/google/android/gms/internal/el;

    iput-object v1, p0, Lcom/google/android/gms/internal/bq;->f:Lcom/google/android/gms/internal/t;

    iput-object v1, p0, Lcom/google/android/gms/internal/bq;->g:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/google/android/gms/internal/bq;->h:Z

    iput-object v1, p0, Lcom/google/android/gms/internal/bq;->i:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/bq;->j:Lcom/google/android/gms/internal/bz;

    iput p6, p0, Lcom/google/android/gms/internal/bq;->k:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/bq;->l:I

    iput-object v1, p0, Lcom/google/android/gms/internal/bq;->m:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/internal/bq;->n:Lcom/google/android/gms/internal/db;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ls;Lcom/google/android/gms/internal/bu;Lcom/google/android/gms/internal/t;Lcom/google/android/gms/internal/bz;Lcom/google/android/gms/internal/el;ZILjava/lang/String;Lcom/google/android/gms/internal/db;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/bq;->a:I

    iput-object v1, p0, Lcom/google/android/gms/internal/bq;->b:Lcom/google/android/gms/internal/bn;

    iput-object p1, p0, Lcom/google/android/gms/internal/bq;->c:Lcom/google/android/gms/internal/ls;

    iput-object p2, p0, Lcom/google/android/gms/internal/bq;->d:Lcom/google/android/gms/internal/bu;

    iput-object p5, p0, Lcom/google/android/gms/internal/bq;->e:Lcom/google/android/gms/internal/el;

    iput-object p3, p0, Lcom/google/android/gms/internal/bq;->f:Lcom/google/android/gms/internal/t;

    iput-object v1, p0, Lcom/google/android/gms/internal/bq;->g:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/google/android/gms/internal/bq;->h:Z

    iput-object v1, p0, Lcom/google/android/gms/internal/bq;->i:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/bq;->j:Lcom/google/android/gms/internal/bz;

    iput p7, p0, Lcom/google/android/gms/internal/bq;->k:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/gms/internal/bq;->l:I

    iput-object p8, p0, Lcom/google/android/gms/internal/bq;->m:Ljava/lang/String;

    iput-object p9, p0, Lcom/google/android/gms/internal/bq;->n:Lcom/google/android/gms/internal/db;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ls;Lcom/google/android/gms/internal/bu;Lcom/google/android/gms/internal/t;Lcom/google/android/gms/internal/bz;Lcom/google/android/gms/internal/el;ZILjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/db;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/bq;->a:I

    iput-object v1, p0, Lcom/google/android/gms/internal/bq;->b:Lcom/google/android/gms/internal/bn;

    iput-object p1, p0, Lcom/google/android/gms/internal/bq;->c:Lcom/google/android/gms/internal/ls;

    iput-object p2, p0, Lcom/google/android/gms/internal/bq;->d:Lcom/google/android/gms/internal/bu;

    iput-object p5, p0, Lcom/google/android/gms/internal/bq;->e:Lcom/google/android/gms/internal/el;

    iput-object p3, p0, Lcom/google/android/gms/internal/bq;->f:Lcom/google/android/gms/internal/t;

    iput-object p9, p0, Lcom/google/android/gms/internal/bq;->g:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/google/android/gms/internal/bq;->h:Z

    iput-object p8, p0, Lcom/google/android/gms/internal/bq;->i:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/bq;->j:Lcom/google/android/gms/internal/bz;

    iput p7, p0, Lcom/google/android/gms/internal/bq;->k:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/gms/internal/bq;->l:I

    iput-object v1, p0, Lcom/google/android/gms/internal/bq;->m:Ljava/lang/String;

    iput-object p10, p0, Lcom/google/android/gms/internal/bq;->n:Lcom/google/android/gms/internal/db;

    return-void
.end method

.method public static a(Landroid/content/Intent;)Lcom/google/android/gms/internal/bq;
    .locals 2

    :try_start_0
    const-string v0, "com.google.android.gms.ads.inernal.overlay.AdOverlayInfo"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const-class v1, Lcom/google/android/gms/internal/bq;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string v1, "com.google.android.gms.ads.inernal.overlay.AdOverlayInfo"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/bq;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/content/Intent;Lcom/google/android/gms/internal/bq;)V
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    const-string v1, "com.google.android.gms.ads.inernal.overlay.AdOverlayInfo"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v1, "com.google.android.gms.ads.inernal.overlay.AdOverlayInfo"

    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method final a()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bq;->c:Lcom/google/android/gms/internal/ls;

    invoke-static {v0}, Lcom/google/android/gms/b/k;->a(Ljava/lang/Object;)Lcom/google/android/gms/b/h;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/b/h;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method final b()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bq;->d:Lcom/google/android/gms/internal/bu;

    invoke-static {v0}, Lcom/google/android/gms/b/k;->a(Ljava/lang/Object;)Lcom/google/android/gms/b/h;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/b/h;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method final c()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bq;->e:Lcom/google/android/gms/internal/el;

    invoke-static {v0}, Lcom/google/android/gms/b/k;->a(Ljava/lang/Object;)Lcom/google/android/gms/b/h;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/b/h;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method final d()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bq;->f:Lcom/google/android/gms/internal/t;

    invoke-static {v0}, Lcom/google/android/gms/b/k;->a(Ljava/lang/Object;)Lcom/google/android/gms/b/h;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/b/h;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method final e()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bq;->j:Lcom/google/android/gms/internal/bz;

    invoke-static {v0}, Lcom/google/android/gms/b/k;->a(Ljava/lang/Object;)Lcom/google/android/gms/b/h;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/b/h;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/bt;->a(Lcom/google/android/gms/internal/bq;Landroid/os/Parcel;I)V

    return-void
.end method

.class public final Lcom/google/android/gms/internal/z;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/internal/a;


# instance fields
.field public final a:I

.field public final b:J

.field public final c:Landroid/os/Bundle;

.field public final d:I

.field public final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Z

.field public final g:I

.field public final h:Z

.field public final i:Ljava/lang/String;

.field public final j:Lcom/google/android/gms/internal/am;

.field public final k:Landroid/location/Location;

.field public final l:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/a;

    invoke-direct {v0}, Lcom/google/android/gms/internal/a;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/z;->CREATOR:Lcom/google/android/gms/internal/a;

    return-void
.end method

.method constructor <init>(IJLandroid/os/Bundle;ILjava/util/List;ZIZLjava/lang/String;Lcom/google/android/gms/internal/am;Landroid/location/Location;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Landroid/os/Bundle;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;ZIZ",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/am;",
            "Landroid/location/Location;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/z;->a:I

    iput-wide p2, p0, Lcom/google/android/gms/internal/z;->b:J

    iput-object p4, p0, Lcom/google/android/gms/internal/z;->c:Landroid/os/Bundle;

    iput p5, p0, Lcom/google/android/gms/internal/z;->d:I

    iput-object p6, p0, Lcom/google/android/gms/internal/z;->e:Ljava/util/List;

    iput-boolean p7, p0, Lcom/google/android/gms/internal/z;->f:Z

    iput p8, p0, Lcom/google/android/gms/internal/z;->g:I

    iput-boolean p9, p0, Lcom/google/android/gms/internal/z;->h:Z

    iput-object p10, p0, Lcom/google/android/gms/internal/z;->i:Ljava/lang/String;

    iput-object p11, p0, Lcom/google/android/gms/internal/z;->j:Lcom/google/android/gms/internal/am;

    iput-object p12, p0, Lcom/google/android/gms/internal/z;->k:Landroid/location/Location;

    iput-object p13, p0, Lcom/google/android/gms/internal/z;->l:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/p;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/gms/internal/z;->a:I

    invoke-virtual {p2}, Lcom/google/android/gms/internal/p;->a()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    :goto_0
    iput-wide v0, p0, Lcom/google/android/gms/internal/z;->b:J

    invoke-virtual {p2}, Lcom/google/android/gms/internal/p;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/z;->l:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/p;->c()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/z;->d:I

    invoke-virtual {p2}, Lcom/google/android/gms/internal/p;->d()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/google/android/gms/internal/z;->e:Ljava/util/List;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/p;->a(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/z;->f:Z

    invoke-virtual {p2}, Lcom/google/android/gms/internal/p;->j()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/z;->g:I

    invoke-virtual {p2}, Lcom/google/android/gms/internal/p;->e()Landroid/location/Location;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/z;->k:Landroid/location/Location;

    const-class v0, Lcom/google/android/gms/ads/b/a/a;

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/p;->a(Ljava/lang/Class;)Lcom/google/android/gms/ads/b/a;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/b/a/a;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/google/android/gms/ads/b/a/a;->a()Landroid/os/Bundle;

    move-result-object v0

    :goto_2
    iput-object v0, p0, Lcom/google/android/gms/internal/z;->c:Landroid/os/Bundle;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/p;->f()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/z;->h:Z

    invoke-virtual {p2}, Lcom/google/android/gms/internal/p;->g()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/z;->i:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/p;->h()Lcom/google/android/gms/ads/search/a;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v2, Lcom/google/android/gms/internal/am;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/am;-><init>(Lcom/google/android/gms/ads/search/a;)V

    :cond_0
    iput-object v2, p0, Lcom/google/android/gms/internal/z;->j:Lcom/google/android/gms/internal/am;

    return-void

    :cond_1
    const-wide/16 v0, -0x1

    goto :goto_0

    :cond_2
    move-object v0, v2

    goto :goto_1

    :cond_3
    move-object v0, v2

    goto :goto_2
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/a;->a(Lcom/google/android/gms/internal/z;Landroid/os/Parcel;I)V

    return-void
.end method

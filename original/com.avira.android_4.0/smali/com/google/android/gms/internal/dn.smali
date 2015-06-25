.class public final Lcom/google/android/gms/internal/dn;
.super Ljava/lang/Object;


# instance fields
.field public final a:Lcom/google/android/gms/internal/z;

.field public final b:Lcom/google/android/gms/internal/el;

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

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

.field public final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final g:I

.field public final h:J

.field public final i:Ljava/lang/String;

.field public final j:Z

.field public final k:Lcom/google/android/gms/internal/an;

.field public final l:Lcom/google/android/gms/internal/bb;

.field public final m:Ljava/lang/String;

.field public final n:Lcom/google/android/gms/internal/ao;

.field public final o:Lcom/google/android/gms/internal/ar;

.field public final p:J

.field public final q:Lcom/google/android/gms/internal/ab;

.field public final r:J

.field public final s:J

.field public final t:J


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/z;Lcom/google/android/gms/internal/el;Ljava/util/List;ILjava/util/List;Ljava/util/List;IJLjava/lang/String;ZLcom/google/android/gms/internal/an;Lcom/google/android/gms/internal/bb;Ljava/lang/String;Lcom/google/android/gms/internal/ao;Lcom/google/android/gms/internal/ar;JLcom/google/android/gms/internal/ab;JJJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/z;",
            "Lcom/google/android/gms/internal/el;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;IJ",
            "Ljava/lang/String;",
            "Z",
            "Lcom/google/android/gms/internal/an;",
            "Lcom/google/android/gms/internal/bb;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ao;",
            "Lcom/google/android/gms/internal/ar;",
            "J",
            "Lcom/google/android/gms/internal/ab;",
            "JJJ)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/dn;->a:Lcom/google/android/gms/internal/z;

    iput-object p2, p0, Lcom/google/android/gms/internal/dn;->b:Lcom/google/android/gms/internal/el;

    if-eqz p3, :cond_0

    invoke-static {p3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    :goto_0
    iput-object v2, p0, Lcom/google/android/gms/internal/dn;->c:Ljava/util/List;

    iput p4, p0, Lcom/google/android/gms/internal/dn;->d:I

    if-eqz p5, :cond_1

    invoke-static {p5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    :goto_1
    iput-object v2, p0, Lcom/google/android/gms/internal/dn;->e:Ljava/util/List;

    if-eqz p6, :cond_2

    invoke-static {p6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    :goto_2
    iput-object v2, p0, Lcom/google/android/gms/internal/dn;->f:Ljava/util/List;

    iput p7, p0, Lcom/google/android/gms/internal/dn;->g:I

    iput-wide p8, p0, Lcom/google/android/gms/internal/dn;->h:J

    iput-object p10, p0, Lcom/google/android/gms/internal/dn;->i:Ljava/lang/String;

    iput-boolean p11, p0, Lcom/google/android/gms/internal/dn;->j:Z

    move-object/from16 v0, p12

    iput-object v0, p0, Lcom/google/android/gms/internal/dn;->k:Lcom/google/android/gms/internal/an;

    move-object/from16 v0, p13

    iput-object v0, p0, Lcom/google/android/gms/internal/dn;->l:Lcom/google/android/gms/internal/bb;

    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/google/android/gms/internal/dn;->m:Ljava/lang/String;

    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/google/android/gms/internal/dn;->n:Lcom/google/android/gms/internal/ao;

    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/google/android/gms/internal/dn;->o:Lcom/google/android/gms/internal/ar;

    move-wide/from16 v0, p17

    iput-wide v0, p0, Lcom/google/android/gms/internal/dn;->p:J

    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/google/android/gms/internal/dn;->q:Lcom/google/android/gms/internal/ab;

    move-wide/from16 v0, p20

    iput-wide v0, p0, Lcom/google/android/gms/internal/dn;->r:J

    move-wide/from16 v0, p22

    iput-wide v0, p0, Lcom/google/android/gms/internal/dn;->s:J

    move-wide/from16 v0, p24

    iput-wide v0, p0, Lcom/google/android/gms/internal/dn;->t:J

    return-void

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    goto :goto_2
.end method

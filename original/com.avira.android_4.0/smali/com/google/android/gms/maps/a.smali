.class public final Lcom/google/android/gms/maps/a;
.super Ljava/lang/Object;


# static fields
.field public static final MAP_TYPE_HYBRID:I = 0x4

.field public static final MAP_TYPE_NONE:I = 0x0

.field public static final MAP_TYPE_NORMAL:I = 0x1

.field public static final MAP_TYPE_SATELLITE:I = 0x2

.field public static final MAP_TYPE_TERRAIN:I = 0x3


# instance fields
.field private final a:Lcom/google/android/gms/maps/a/d;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/maps/a/d;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/gv;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/a/d;

    iput-object v0, p0, Lcom/google/android/gms/maps/a;->a:Lcom/google/android/gms/maps/a/d;

    return-void
.end method

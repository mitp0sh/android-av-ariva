.class public final Lcom/google/android/gms/ads/b;
.super Ljava/lang/Object;


# static fields
.field public static final DEVICE_ID_EMULATOR:Ljava/lang/String;

.field public static final ERROR_CODE_INTERNAL_ERROR:I = 0x0

.field public static final ERROR_CODE_INVALID_REQUEST:I = 0x1

.field public static final ERROR_CODE_NETWORK_ERROR:I = 0x2

.field public static final ERROR_CODE_NO_FILL:I = 0x3

.field public static final GENDER_FEMALE:I = 0x2

.field public static final GENDER_MALE:I = 0x1

.field public static final GENDER_UNKNOWN:I


# instance fields
.field private final a:Lcom/google/android/gms/internal/p;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/p;->DEVICE_ID_EMULATOR:Ljava/lang/String;

    sput-object v0, Lcom/google/android/gms/ads/b;->DEVICE_ID_EMULATOR:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method final a()Lcom/google/android/gms/internal/p;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/b;->a:Lcom/google/android/gms/internal/p;

    return-object v0
.end method

.class public final Lcom/google/android/gms/internal/is;
.super Ljava/lang/Object;


# static fields
.field public static final EE:Lcom/google/android/gms/drive/metadata/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/drive/metadata/c",
            "<",
            "Ljava/util/Date;",
            ">;"
        }
    .end annotation
.end field

.field public static final EF:Lcom/google/android/gms/drive/metadata/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/drive/metadata/c",
            "<",
            "Ljava/util/Date;",
            ">;"
        }
    .end annotation
.end field

.field public static final EG:Lcom/google/android/gms/drive/metadata/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/drive/metadata/c",
            "<",
            "Ljava/util/Date;",
            ">;"
        }
    .end annotation
.end field

.field public static final EH:Lcom/google/android/gms/drive/metadata/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/drive/metadata/c",
            "<",
            "Ljava/util/Date;",
            ">;"
        }
    .end annotation
.end field

.field public static final LAST_VIEWED_BY_ME:Lcom/google/android/gms/drive/metadata/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/drive/metadata/c",
            "<",
            "Ljava/util/Date;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const v2, 0x3e8fa0

    new-instance v0, Lcom/google/android/gms/drive/metadata/internal/b;

    const-string v1, "modified"

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/drive/metadata/internal/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/is;->EE:Lcom/google/android/gms/drive/metadata/c;

    new-instance v0, Lcom/google/android/gms/drive/metadata/internal/b;

    const-string v1, "modifiedByMe"

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/drive/metadata/internal/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/is;->EF:Lcom/google/android/gms/drive/metadata/c;

    new-instance v0, Lcom/google/android/gms/drive/metadata/internal/b;

    const-string v1, "created"

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/drive/metadata/internal/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/is;->EG:Lcom/google/android/gms/drive/metadata/c;

    new-instance v0, Lcom/google/android/gms/drive/metadata/internal/b;

    const-string v1, "sharedWithMe"

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/drive/metadata/internal/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/is;->EH:Lcom/google/android/gms/drive/metadata/c;

    new-instance v0, Lcom/google/android/gms/drive/metadata/internal/b;

    const-string v1, "lastOpenedTime"

    const v2, 0x419ce0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/drive/metadata/internal/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/is;->LAST_VIEWED_BY_ME:Lcom/google/android/gms/drive/metadata/c;

    return-void
.end method

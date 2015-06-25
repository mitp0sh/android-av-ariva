.class public final Lcom/facebook/ap;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final BODY_KEY:Ljava/lang/String; = "body"

.field private static final CODE_KEY:Ljava/lang/String; = "code"

.field private static final EC_APP_NOT_INSTALLED:I = 0x1ca

.field private static final EC_APP_TOO_MANY_CALLS:I = 0x4

.field private static final EC_EXPIRED:I = 0x1cf

.field private static final EC_INVALID_SESSION:I = 0x66

.field private static final EC_INVALID_TOKEN:I = 0xbe

.field private static final EC_PASSWORD_CHANGED:I = 0x1cc

.field private static final EC_PERMISSION_DENIED:I = 0xa

.field private static final EC_RANGE_PERMISSION:Lcom/facebook/ar;

.field private static final EC_SERVICE_UNAVAILABLE:I = 0x2

.field private static final EC_UNCONFIRMED_USER:I = 0x1d0

.field private static final EC_UNKNOWN_ERROR:I = 0x1

.field private static final EC_USER_CHECKPOINTED:I = 0x1cb

.field private static final EC_USER_TOO_MANY_CALLS:I = 0x11

.field private static final ERROR_CODE_FIELD_KEY:Ljava/lang/String; = "code"

.field private static final ERROR_CODE_KEY:Ljava/lang/String; = "error_code"

.field private static final ERROR_IS_TRANSIENT_KEY:Ljava/lang/String; = "is_transient"

.field private static final ERROR_KEY:Ljava/lang/String; = "error"

.field private static final ERROR_MESSAGE_FIELD_KEY:Ljava/lang/String; = "message"

.field private static final ERROR_MSG_KEY:Ljava/lang/String; = "error_msg"

.field private static final ERROR_REASON_KEY:Ljava/lang/String; = "error_reason"

.field private static final ERROR_SUB_CODE_KEY:Ljava/lang/String; = "error_subcode"

.field private static final ERROR_TYPE_FIELD_KEY:Ljava/lang/String; = "type"

.field private static final ERROR_USER_MSG_KEY:Ljava/lang/String; = "error_user_msg"

.field private static final ERROR_USER_TITLE_KEY:Ljava/lang/String; = "error_user_title"

.field private static final HTTP_RANGE_CLIENT_ERROR:Lcom/facebook/ar;

.field private static final HTTP_RANGE_SERVER_ERROR:Lcom/facebook/ar;

.field private static final HTTP_RANGE_SUCCESS:Lcom/facebook/ar;

.field public static final INVALID_ERROR_CODE:I = -0x1

.field public static final INVALID_HTTP_STATUS_CODE:I = -0x1

.field private static final INVALID_MESSAGE_ID:I


# instance fields
.field private final a:I

.field private final b:Z

.field private final c:Lcom/facebook/aq;

.field private final d:I

.field private final e:I

.field private final f:I

.field private final g:Ljava/lang/String;

.field private final h:Ljava/lang/String;

.field private final i:Ljava/lang/String;

.field private final j:Ljava/lang/String;

.field private final k:Z

.field private final l:Lorg/json/JSONObject;

.field private final m:Lorg/json/JSONObject;

.field private final n:Ljava/lang/Object;

.field private final o:Ljava/net/HttpURLConnection;

.field private final p:Lcom/facebook/am;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v2, 0x12b

    const/16 v1, 0xc8

    const/4 v3, 0x0

    .line 85
    new-instance v0, Lcom/facebook/ar;

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/ar;-><init>(IIB)V

    sput-object v0, Lcom/facebook/ap;->EC_RANGE_PERMISSION:Lcom/facebook/ar;

    .line 92
    new-instance v0, Lcom/facebook/ar;

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/ar;-><init>(IIB)V

    sput-object v0, Lcom/facebook/ap;->HTTP_RANGE_SUCCESS:Lcom/facebook/ar;

    .line 93
    new-instance v0, Lcom/facebook/ar;

    const/16 v1, 0x190

    const/16 v2, 0x1f3

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/ar;-><init>(IIB)V

    sput-object v0, Lcom/facebook/ap;->HTTP_RANGE_CLIENT_ERROR:Lcom/facebook/ar;

    .line 94
    new-instance v0, Lcom/facebook/ar;

    const/16 v1, 0x1f4

    const/16 v2, 0x257

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/ar;-><init>(IIB)V

    sput-object v0, Lcom/facebook/ap;->HTTP_RANGE_SERVER_ERROR:Lcom/facebook/ar;

    return-void
.end method

.method private constructor <init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/Object;Ljava/net/HttpURLConnection;)V
    .locals 14

    .prologue
    .line 196
    const/4 v13, 0x0

    move-object v0, p0

    move v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    invoke-direct/range {v0 .. v13}, Lcom/facebook/ap;-><init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/Object;Ljava/net/HttpURLConnection;Lcom/facebook/am;)V

    .line 198
    return-void
.end method

.method private constructor <init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/Object;Ljava/net/HttpURLConnection;Lcom/facebook/am;)V
    .locals 4

    .prologue
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    iput p1, p0, Lcom/facebook/ap;->d:I

    .line 118
    iput p2, p0, Lcom/facebook/ap;->e:I

    .line 119
    iput p3, p0, Lcom/facebook/ap;->f:I

    .line 120
    iput-object p4, p0, Lcom/facebook/ap;->g:Ljava/lang/String;

    .line 121
    iput-object p5, p0, Lcom/facebook/ap;->h:Ljava/lang/String;

    .line 122
    iput-object p9, p0, Lcom/facebook/ap;->m:Lorg/json/JSONObject;

    .line 123
    iput-object p10, p0, Lcom/facebook/ap;->l:Lorg/json/JSONObject;

    .line 124
    iput-object p11, p0, Lcom/facebook/ap;->n:Ljava/lang/Object;

    .line 125
    move-object/from16 v0, p12

    iput-object v0, p0, Lcom/facebook/ap;->o:Ljava/net/HttpURLConnection;

    .line 126
    iput-object p6, p0, Lcom/facebook/ap;->i:Ljava/lang/String;

    .line 127
    iput-object p7, p0, Lcom/facebook/ap;->j:Ljava/lang/String;

    .line 128
    iput-boolean p8, p0, Lcom/facebook/ap;->k:Z

    .line 130
    const/4 v1, 0x0

    .line 131
    if-eqz p13, :cond_0

    .line 132
    move-object/from16 v0, p13

    iput-object v0, p0, Lcom/facebook/ap;->p:Lcom/facebook/am;

    .line 133
    const/4 v1, 0x1

    move v3, v1

    .line 140
    :goto_0
    const/4 v2, 0x0

    .line 141
    const/4 v1, 0x0

    .line 142
    if-eqz v3, :cond_1

    .line 144
    sget-object v2, Lcom/facebook/aq;->CLIENT:Lcom/facebook/aq;

    .line 145
    const/4 v1, 0x0

    move-object v3, v2

    move v2, v1

    .line 185
    :goto_1
    if-eqz p7, :cond_11

    invoke-virtual {p7}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_11

    const/4 v1, 0x1

    .line 187
    :goto_2
    iput-object v3, p0, Lcom/facebook/ap;->c:Lcom/facebook/aq;

    .line 188
    iput v2, p0, Lcom/facebook/ap;->a:I

    .line 189
    iput-boolean v1, p0, Lcom/facebook/ap;->b:Z

    .line 190
    return-void

    .line 135
    :cond_0
    new-instance v2, Lcom/facebook/as;

    invoke-direct {v2, p0, p5}, Lcom/facebook/as;-><init>(Lcom/facebook/ap;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/facebook/ap;->p:Lcom/facebook/am;

    move v3, v1

    goto :goto_0

    .line 147
    :cond_1
    const/4 v3, 0x1

    if-eq p2, v3, :cond_2

    const/4 v3, 0x2

    if-ne p2, v3, :cond_4

    .line 148
    :cond_2
    sget-object v2, Lcom/facebook/aq;->SERVER:Lcom/facebook/aq;

    .line 168
    :cond_3
    :goto_3
    if-nez v2, :cond_12

    .line 174
    sget-object v2, Lcom/facebook/ap;->HTTP_RANGE_CLIENT_ERROR:Lcom/facebook/ar;

    invoke-virtual {v2, p1}, Lcom/facebook/ar;->a(I)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 175
    sget-object v2, Lcom/facebook/aq;->BAD_REQUEST:Lcom/facebook/aq;

    move-object v3, v2

    move v2, v1

    goto :goto_1

    .line 149
    :cond_4
    const/4 v3, 0x4

    if-eq p2, v3, :cond_5

    const/16 v3, 0x11

    if-ne p2, v3, :cond_6

    .line 150
    :cond_5
    sget-object v2, Lcom/facebook/aq;->THROTTLING:Lcom/facebook/aq;

    goto :goto_3

    .line 151
    :cond_6
    const/16 v3, 0xa

    if-eq p2, v3, :cond_7

    sget-object v3, Lcom/facebook/ap;->EC_RANGE_PERMISSION:Lcom/facebook/ar;

    invoke-virtual {v3, p2}, Lcom/facebook/ar;->a(I)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 152
    :cond_7
    sget-object v2, Lcom/facebook/aq;->PERMISSION:Lcom/facebook/aq;

    .line 153
    sget v1, Lcom/facebook/a/g;->com_facebook_requesterror_permissions:I

    goto :goto_3

    .line 154
    :cond_8
    const/16 v3, 0x66

    if-eq p2, v3, :cond_9

    const/16 v3, 0xbe

    if-ne p2, v3, :cond_3

    .line 155
    :cond_9
    const/16 v1, 0x1cb

    if-eq p3, v1, :cond_a

    const/16 v1, 0x1d0

    if-ne p3, v1, :cond_b

    .line 156
    :cond_a
    sget-object v2, Lcom/facebook/aq;->AUTHENTICATION_RETRY:Lcom/facebook/aq;

    .line 157
    sget v1, Lcom/facebook/a/g;->com_facebook_requesterror_web_login:I

    goto :goto_3

    .line 160
    :cond_b
    sget-object v2, Lcom/facebook/aq;->AUTHENTICATION_REOPEN_SESSION:Lcom/facebook/aq;

    .line 162
    const/16 v1, 0x1ca

    if-eq p3, v1, :cond_c

    const/16 v1, 0x1cf

    if-ne p3, v1, :cond_d

    .line 163
    :cond_c
    sget v1, Lcom/facebook/a/g;->com_facebook_requesterror_relogin:I

    goto :goto_3

    .line 164
    :cond_d
    const/16 v1, 0x1cc

    if-ne p3, v1, :cond_e

    .line 165
    sget v1, Lcom/facebook/a/g;->com_facebook_requesterror_password_changed:I

    goto :goto_3

    .line 167
    :cond_e
    sget v1, Lcom/facebook/a/g;->com_facebook_requesterror_reconnect:I

    goto :goto_3

    .line 176
    :cond_f
    sget-object v2, Lcom/facebook/ap;->HTTP_RANGE_SERVER_ERROR:Lcom/facebook/ar;

    invoke-virtual {v2, p1}, Lcom/facebook/ar;->a(I)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 177
    sget-object v2, Lcom/facebook/aq;->SERVER:Lcom/facebook/aq;

    move-object v3, v2

    move v2, v1

    goto/16 :goto_1

    .line 179
    :cond_10
    sget-object v2, Lcom/facebook/aq;->OTHER:Lcom/facebook/aq;

    move-object v3, v2

    move v2, v1

    goto/16 :goto_1

    .line 185
    :cond_11
    const/4 v1, 0x0

    goto/16 :goto_2

    :cond_12
    move-object v3, v2

    move v2, v1

    goto/16 :goto_1
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 14

    .prologue
    .line 208
    const/4 v1, -0x1

    const/4 v3, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v0, p0

    move v2, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    invoke-direct/range {v0 .. v13}, Lcom/facebook/ap;-><init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/Object;Ljava/net/HttpURLConnection;Lcom/facebook/am;)V

    .line 210
    return-void
.end method

.method constructor <init>(Ljava/net/HttpURLConnection;Ljava/lang/Exception;)V
    .locals 15

    .prologue
    .line 201
    const/4 v2, -0x1

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p2

    instance-of v1, v0, Lcom/facebook/am;

    if-eqz v1, :cond_0

    check-cast p2, Lcom/facebook/am;

    move-object/from16 v14, p2

    :goto_0
    move-object v1, p0

    move-object/from16 v13, p1

    invoke-direct/range {v1 .. v14}, Lcom/facebook/ap;-><init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/Object;Ljava/net/HttpURLConnection;Lcom/facebook/am;)V

    .line 205
    return-void

    .line 201
    :cond_0
    new-instance v14, Lcom/facebook/am;

    move-object/from16 v0, p2

    invoke-direct {v14, v0}, Lcom/facebook/am;-><init>(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static a(Lorg/json/JSONObject;Ljava/lang/Object;Ljava/net/HttpURLConnection;)Lcom/facebook/ap;
    .locals 13

    .prologue
    .line 394
    :try_start_0
    const-string v0, "code"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 395
    const-string v0, "code"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 396
    const-string v0, "body"

    const-string v2, "FACEBOOK_NON_JSON_RESULT"

    invoke-static {p0, v0, v2}, Lcom/facebook/b/cl;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    .line 399
    if-eqz v9, :cond_3

    instance-of v0, v9, Lorg/json/JSONObject;

    if-eqz v0, :cond_3

    .line 400
    check-cast v9, Lorg/json/JSONObject;

    .line 403
    const/4 v4, 0x0

    .line 404
    const/4 v5, 0x0

    .line 405
    const/4 v7, 0x0

    .line 406
    const/4 v6, 0x0

    .line 407
    const/4 v8, 0x0

    .line 408
    const/4 v2, 0x0

    .line 409
    const/4 v3, 0x0

    .line 411
    const/4 v0, 0x0

    .line 412
    const-string v10, "error"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 414
    const-string v0, "error"

    const/4 v2, 0x0

    invoke-static {v9, v0, v2}, Lcom/facebook/b/cl;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 416
    const-string v2, "type"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 417
    const-string v2, "message"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 418
    const-string v2, "code"

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    .line 419
    const-string v3, "error_subcode"

    const/4 v6, -0x1

    invoke-virtual {v0, v3, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    .line 420
    const-string v6, "error_user_msg"

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 421
    const-string v6, "error_user_title"

    const/4 v8, 0x0

    invoke-virtual {v0, v6, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 422
    const-string v8, "is_transient"

    const/4 v10, 0x0

    invoke-virtual {v0, v8, v10}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v8

    .line 423
    const/4 v0, 0x1

    .line 433
    :cond_0
    :goto_0
    if-eqz v0, :cond_3

    .line 434
    new-instance v0, Lcom/facebook/ap;

    move-object v10, p0

    move-object v11, p1

    move-object v12, p2

    invoke-direct/range {v0 .. v12}, Lcom/facebook/ap;-><init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/Object;Ljava/net/HttpURLConnection;)V

    .line 453
    :goto_1
    return-object v0

    .line 424
    :cond_1
    const-string v10, "error_code"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_2

    const-string v10, "error_msg"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_2

    const-string v10, "error_reason"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 426
    :cond_2
    const-string v0, "error_reason"

    const/4 v2, 0x0

    invoke-virtual {v9, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 427
    const-string v0, "error_msg"

    const/4 v2, 0x0

    invoke-virtual {v9, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 428
    const-string v0, "error_code"

    const/4 v2, -0x1

    invoke-virtual {v9, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    .line 429
    const-string v0, "error_subcode"

    const/4 v3, -0x1

    invoke-virtual {v9, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    .line 430
    const/4 v0, 0x1

    goto :goto_0

    .line 441
    :cond_3
    sget-object v0, Lcom/facebook/ap;->HTTP_RANGE_SUCCESS:Lcom/facebook/ar;

    invoke-virtual {v0, v1}, Lcom/facebook/ar;->a(I)Z

    move-result v0

    if-nez v0, :cond_4

    .line 442
    new-instance v0, Lcom/facebook/ap;

    const/4 v2, -0x1

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "body"

    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    const-string v9, "body"

    const-string v10, "FACEBOOK_NON_JSON_RESULT"

    invoke-static {p0, v9, v10}, Lcom/facebook/b/cl;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/json/JSONObject;

    :goto_2
    move-object v10, p0

    move-object v11, p1

    move-object v12, p2

    invoke-direct/range {v0 .. v12}, Lcom/facebook/ap;-><init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/Object;Ljava/net/HttpURLConnection;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 453
    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    .line 442
    :cond_5
    const/4 v9, 0x0

    goto :goto_2
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 250
    iget v0, p0, Lcom/facebook/ap;->d:I

    return v0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 259
    iget v0, p0, Lcom/facebook/ap;->e:I

    return v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/facebook/ap;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcom/facebook/ap;->h:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/facebook/ap;->h:Ljava/lang/String;

    .line 291
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/ap;->p:Lcom/facebook/am;

    invoke-virtual {v0}, Lcom/facebook/am;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final e()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lcom/facebook/ap;->l:Lorg/json/JSONObject;

    return-object v0
.end method

.method public final f()Lcom/facebook/am;
    .locals 1

    .prologue
    .line 374
    iget-object v0, p0, Lcom/facebook/ap;->p:Lcom/facebook/am;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 379
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{HttpStatus: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/facebook/ap;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", errorCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/facebook/ap;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", errorType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ap;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", errorMessage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/facebook/ap;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

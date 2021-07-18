
import React, { Fragment } from 'react';
import styled from 'styled-components';
import { Link } from "react-router-dom";

// components
import { LocalMallIcon, QueryBuilderIcon } from './Icons';

// constants
import { FONT_SIZE } from '../style_constants';

const LineWrapper = styled.div`
  display: flex;
  justify-content: space-between;
`;

const AmountText = styled.p`
  font-size: ${FONT_SIZE.STAND_BODY};
  font-weight: bold;
`;

export const OrderDetailItem = ({
  shopId,
  shopName,
  shopFee,
  timeRequired,
  photoCount,
  price,
}) => (
  <Fragment>
    <LineWrapper>
      <LocalMallIcon />
      <Link to={`/shops/${shopId}/photos`}>
        {shopName}
      </Link>
    </LineWrapper>
    <LineWrapper>
      <QueryBuilderIcon />
      {timeRequired}分で到着予定
    </LineWrapper>
    <LineWrapper>
      <p>
        商品数
      </p>
      <p>
        {photoCount}
      </p>
    </LineWrapper>
    <LineWrapper>
      <p>
        商品数:{photoCount}
      </p>
      <p>
        ¥ {price}
      </p>
    </LineWrapper>
    <LineWrapper>
      <p>
        配送料
      </p>
      <p>
        ¥ {shopFee}
      </p>
    </LineWrapper>
    <LineWrapper>
      <AmountText>
        合計
      </AmountText>
      <AmountText>
        ¥ {price + shopFee}
      </AmountText>
    </LineWrapper>
  </Fragment>
);

